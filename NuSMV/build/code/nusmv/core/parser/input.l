  /* BEGINS: input.l.1.25 */
/***************************************************************  -*-C-*-  ***/
/**CFile***********************************************************************

  FileName    [input.l]

  PackageName [parser]

  Synopsis    [Lexical analyzer for the NuSMV input language]

  SeeAlso     [grammar.y]

  Author      [Marco Roveri]

  Copyright   [
  This file is part of the ``parser'' package of NuSMV version 2.
  Copyright (C) 1998-2005 by CMU and FBK-irst.

  NuSMV version 2 is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2 of the License, or (at your option) any later version.

  NuSMV version 2 is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  USA.

  For more information on NuSMV see <http://nusmv.fbk.eu>
  or email to <nusmv-users@fbk.eu>.
  Please report bugs to <nusmv-users@fbk.eu>.

  To contact the NuSMV development board, email to <nusmv@fbk.eu>. ]

******************************************************************************/
  /* ENDS: input.l.1.25 */
  /* BEGINS: input.l.1.50 */
/***************************************************************  -*-C-*-  ***/
%{

#if HAVE_CONFIG_H
#include "nusmv-config.h"
#endif

#include "cudd/util.h"

#include "nusmv/core/utils/utils.h"
#include "nusmv/core/utils/ustring.h"
#include "nusmv/core/node/node.h"
#include "nusmv/core/utils/ErrorMgr.h"
#include "nusmv/core/utils/WordNumberMgr.h"

#include <ctype.h>
#include <stdlib.h> /* for strtol */
#include <limits.h> /* for LLONG_MAX */

#include "nusmv/core/utils/portability.h" /* for errno */
#include "nusmv/core/parser/grammar.h" /* For yacc/lex interaction */
#include "nusmv/core/parser/parser.h"

/* For direct interpretation of atomic (ATOM and NUMBER)
   and boolan (TRUE and FALSE) constants. */
#include "nusmv/core/parser/symbols.h"
static int nusmv_skip_comment(void);
static int nusmv_skip_multiline_comment(void);

 extern NuSMVEnv_ptr __nusmv_parser_env__;

void Parser_switch_to_psl(void);

/* The below code is only meaningful for flex version 2.5.31 which is
   buggy since it does not define the yy_prev_more_offset static
   variable */
#if defined YY_FLEX_SUBMINOR_VERSION &&         \
  defined YY_FLEX_MAJOR_VERSION &&              \
  defined YY_FLEX_MINOR_VERSION
#if YY_FLEX_SUBMINOR_VERSION == 31 &&           \
  YY_FLEX_MINOR_VERSION == 5 &&                 \
  YY_FLEX_MAJOR_VERSION == 2
static int yy_prev_more_offset = 0;
#endif
#endif

#if ! NUSMV_HAVE_ISATTY
static inline int isatty(int d) { return 0; }
#endif

/*
   The following are needed in order to allow parsing of long
   comments, that otherwise will cause errors since flex thinks that
   it is using REJECT even if it isn't.  The "%option noreject" seems
   to be ignored in the latest (and previous) versions of flex.
*/
#ifdef YY_USES_REJECT
#undef YY_USES_REJECT
#endif

#if NUSMV_HAVE_ERRNO_H
#define YY_INPUT(buf, result, max_size) \
        if ( YY_CURRENT_BUFFER->yy_is_interactive ) \
                { \
                int c = '*', n; \
                for (n=0; n<max_size && \
                     (c = getc(yyin)) != EOF && \
                     c!=' ' && c!='\n' && c!='\t' && c!='\r' && c!='\f'; ++n ) \
                        buf[n] = (char) c; \
                if (c==' ' || c=='\n' || c=='\t' || c=='\r' || c=='\f') buf[n++] = (char) c; \
                if (c == EOF && ferror(yyin)) YY_FATAL_ERROR( "input in flex scanner failed" ); \
                result = n; \
                } \
        else \
                { \
                errno=0; \
                while ( (result = fread(buf, 1, max_size, yyin))==0 && ferror(yyin)) \
                        { \
                        if(errno != EINTR) \
                                { \
                                YY_FATAL_ERROR( "input in flex scanner failed" ); \
                                break; \
                                } \
                        errno=0; \
                        clearerr(yyin); \
                        } \
                }
#else /*  NUSMV_HAVE_ERRNO_H */
#define YY_INPUT(buf, result, max_size) \
        if ( YY_CURRENT_BUFFER->yy_is_interactive ) \
                { \
                int c = '*', n; \
                for (n=0; n<max_size && \
                     (c = getc(yyin)) != EOF && \
                     c!=' ' && c!='\n' && c!='\t' && c!='\r' && c!='\f'; ++n ) \
                        buf[n] = (char) c; \
                if (c==' ' || c=='\n' || c=='\t' || c=='\r' || c=='\f') buf[n++] = (char) c; \
                if (c == EOF && ferror(yyin)) YY_FATAL_ERROR( "input in flex scanner failed" ); \
                result = n; \
                } \
        else \
                { \
                while ( (result = fread(buf, 1, max_size, yyin))==0 && ferror(yyin)) \
                        { \
                        clearerr(yyin); \
                        } \
                }
#endif /* NUSMV_HAVE_ERRNO_H */

%}
%a        15000
%o        25000

%pointer
%option yylineno
%option noreject
%option always-interactive
  /* ENDS: input.l.1.50 */
%%
  /* BEGINS: input.l.2.25 */
  /* **************************************************************  -*-C-*-  ***/

[ \n\t\r\f]             ;
"--"                    nusmv_skip_comment();
"/--"                   nusmv_skip_multiline_comment();
^"#"" "[0-9]+.*\n       sscanf(nusmv_yytext,"# %d",&nusmv_yylineno);
^"#".*\n                {
  const ErrorMgr_ptr errmgr =
    ERROR_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_ERROR_MANAGER));
  ErrorMgr_rpterr(errmgr, "Unexpected preprocessor directive:\n %s\n",nusmv_yytext);
}
  /* ENDS: input.l.2.25 */
  /* BEGINS: input.l.2.50 */
  /* **************************************************************  -*-C-*-  ***/

"MODULE"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_MODULE);}
"process"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_PROCESS);}
"DEFINE"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_DEFINE);}
"MDEFINE"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_ARRAY_DEFINE);}
"VAR"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_VAR);}
"FUN"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_FUN);}
"FROZENVAR"             {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_FROZENVAR);}
"IVAR"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_IVAR);}
"INIT"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_INIT);}
"TRANS"                 {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_TRANS);}
"INVAR"                 {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_INVAR);}
"SPEC"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_SPEC);}
"CTLSPEC"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_CTLSPEC);}
"LTLSPEC"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_LTLSPEC);}
"PSLSPEC"               {nusmv_yylval.lineno = nusmv_yylineno; Parser_switch_to_psl(); return(TOK_PSLSPEC);}
"COMPUTE"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_COMPUTE);}
"INVARSPEC"             {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_INVARSPEC);}
"NAME"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_NAME);}
"CONSTRAINT"            {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_CONSTRAINT);}
"ITYPE"                 {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_ITYPE);}
"CONSTANTS"             {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_CONSTANTS);}
"SIMPWFF"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_SIMPWFF);}
"NEXTWFF"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_NEXTWFF);}
"CTLWFF"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_CTLWFF);}
"LTLWFF"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_LTLWFF);}
"COMPWFF"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_COMPWFF);}
"COMPID"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_COMPID);}
"IN"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_INCONTEXT);}
"FAIRNESS"              {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_FAIRNESS);}
"JUSTICE"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_JUSTICE);}
"COMPASSION"            {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_COMPASSION);}
"ISA"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_ISA);}
"ASSIGN"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_ASSIGN);}

"array"                 {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_ARRAY);}
"bool"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_BOOL);}
"of"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_OF);}
"boolean"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_BOOLEAN);}
"word1"                 {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_WORD1);}
"word"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_WORD);}
"Word"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_WORD);}

"signed"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_SIGNED);}
"unsigned"              {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_UNSIGNED);}
"extend"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_EXTEND);}

"uwconst"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_UWCONST);}
"swconst"               {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_SWCONST);}

"resize"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_WRESIZE);}
"sizeof"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_WSIZEOF);}
"toint"                 {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_WTOINT);}
"count"                 {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_COUNT);}

"READ"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_WAREAD);}
"WRITE"                 {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_WAWRITE);}

"EX"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_EX);}
"AX"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_AX);}
"EF"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_EF);}
"AF"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_AF);}
"EG"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_EG);}
"AG"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_AG);}
"E"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_EE);}
"F"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_OP_FUTURE);}
"O"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_OP_ONCE);}
"G"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_OP_GLOBAL);}
"H"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_OP_HISTORICAL);}
"X"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_OP_NEXT);}
"Y"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_OP_PREC);}
"Z"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_OP_NOTPRECNOT);}
"A"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_AA);}
"U"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_UNTIL);}
"S"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_SINCE);}
"V"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_RELEASES);}
"T"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_TRIGGERED);}
"BU"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_BUNTIL);}
"EBF"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_EBF);}
"ABF"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_ABF);}
"EBG"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_EBG);}
"ABG"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_ABG);}
"MIN"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_MMIN);}
"MAX"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_MMAX);}
"("                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_LP);}
")"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_RP);}
"["                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_LB);}
"]"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_RB);}
"{"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_LCB);}
"}"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_RCB);}
"FALSE"                 {
                         const NodeMgr_ptr nodemgr =
                           NODE_MGR(NuSMVEnv_get_value(__nusmv_parser_env__,
                                                           ENV_NODE_MGR));
                         nusmv_yylval.node = new_node(nodemgr, FALSEEXP,Nil,Nil);
                         return(TOK_FALSEEXP);
                        }
"TRUE"                  {
                         const NodeMgr_ptr nodemgr =
                           NODE_MGR(NuSMVEnv_get_value(__nusmv_parser_env__,
                                                           ENV_NODE_MGR));
                         nusmv_yylval.node = new_node(nodemgr, TRUEEXP,Nil,Nil);
                         return(TOK_TRUEEXP);
                        }
"case"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_CASE);}
"esac"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_ESAC);}
":="                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_EQDEF);}
"+"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_PLUS);}
"-"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_MINUS);}
"*"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_TIMES);}
"/"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_DIVIDE);}
"mod"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_MOD);}
"<<"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_LSHIFT);}
">>"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_RSHIFT);}
"<<<"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_LROTATE);}
">>>"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_RROTATE);}
"="                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_EQUAL);}
"!="                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_NOTEQUAL);}
"<="                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_LE);}
">="                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_GE);}
"<"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_LT);}
">"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_GT);}
"next"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_NEXT);}
"init"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_SMALLINIT);}
"self"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_SELF);}
"union"                 {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_UNION);}
"in"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_SETIN);}
"abs"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_ABS);}
"min"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_MIN);}
"max"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_MAX);}
".."                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_TWODOTS);}
"."                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_DOT);}
"->"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_IMPLIES);}
"<->"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_IFF);}
"|"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_OR);}
"&"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_AND);}
"xor"                   {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_XOR);}
"xnor"                  {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_XNOR);}
"!"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_NOT);}
"?"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_QUESTIONMARK);}
","                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_COMMA);}
":"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_COLON);}
";"                     {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_SEMI);}
"::"                    {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_CONCATENATION);}


  /* ENDS: input.l.2.50 */
  /* BEGINS: input.l.2.51 */
  /* **************************************************************  -*-C-*-  ***/

"CONSTARRAY"            {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_CONST_ARRAY);}
"typeof"                {nusmv_yylval.lineno = nusmv_yylineno; return(TOK_TYPEOF);}
  /* ENDS: input.l.2.51 */
  /* BEGINS: input.l.2.75 */
  /* **************************************************************  -*-C-*-  ***/

 /* word constants */
"0"([us])?[bBoOdDhH][0-9]*"_"[0-9a-fA-F][0-9a-fA-F_]* {
                 const WordNumberMgr_ptr words =
                   WORD_NUMBER_MGR(NuSMVEnv_get_value(__nusmv_parser_env__,
                                                      ENV_WORD_NUMBER_MGR));
                 const ErrorMgr_ptr errmgr =
                   ERROR_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_ERROR_MANAGER));

                 const NodeMgr_ptr nodemgr =
                   NODE_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_NODE_MGR));

                 char* errorString;
                 WordNumber_ptr wordConstant
                   = WordNumberMgr_parsed_string_to_word_number(words, yytext, &errorString);

                 /* check for errors */
                 if (WORD_NUMBER(NULL) == wordConstant) ErrorMgr_rpterr(errmgr, "%s", errorString);
                 nusmv_yylval.node = new_node(nodemgr, 's' == yytext[1]
                                        ? NUMBER_SIGNED_WORD : NUMBER_UNSIGNED_WORD,
                                        (node_ptr)wordConstant,Nil);
                 return(TOK_NUMBER_WORD);
               }

 /* real, fractional and exponential constants */
[fF]"'"[0-9]+"/"[0-9]+  {
                  const UStringMgr_ptr strings =
                    USTRING_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_STRING_MGR));
                  const NodeMgr_ptr nodemgr =
                    NODE_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_NODE_MGR));

                  yytext[0] = 'f';
                  nusmv_yylval.node = new_node(nodemgr, NUMBER_FRAC,
                                         (node_ptr)UStringMgr_find_string(strings, yytext),Nil);
                  return(TOK_NUMBER_FRAC);
                 }

[0-9]+("."[0-9]+)?[eE][+-]?[0-9]+ {
                 const NodeMgr_ptr nodemgr =
                   NODE_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_NODE_MGR));
                 const UStringMgr_ptr strings =
                   USTRING_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_STRING_MGR));

                 nusmv_yylval.node = new_node(nodemgr, NUMBER_EXP,
                                        (node_ptr)UStringMgr_find_string(strings, yytext),Nil);
                 return(TOK_NUMBER_EXP);
                 }

[0-9]+"."[0-9]+  {
                  const UStringMgr_ptr strings =
                    USTRING_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_STRING_MGR));
                  const NodeMgr_ptr nodemgr =
                    NODE_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_NODE_MGR));

                  nusmv_yylval.node = new_node(nodemgr, NUMBER_REAL,
                                         (node_ptr)UStringMgr_find_string(strings, yytext),Nil);
                  return(TOK_NUMBER_REAL);
                 }

 /* integer number */
[0-9]+           {
                 const ErrorMgr_ptr errmgr =
                   ERROR_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_ERROR_MANAGER));
                 const NodeMgr_ptr nodemgr =
                   NODE_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_NODE_MGR));

                  long tmp;
                  char* endptr;

                  errno = 0;
                  tmp = strtol(yytext, &endptr, 10);

                  /* range errors */
                  if ((errno == ERANGE && (tmp == LONG_MAX || tmp == LONG_MIN))
                      || (errno != 0 && tmp == 0)

                      /* no digits found */
                      || (endptr == yytext)

                      /* garbage after digits */
                      || (*endptr != '\0')

                      /* as an additional check, verify that the value can
                         fit into an ordinary int. tmp can not be negative */
                      || (tmp < 0) || (INT_MAX < tmp)) {

                    ErrorMgr_rpterr(errmgr, "illegal integer: \"%s\"", yytext);
                  }

                  /* here tmp can be safely cast to int */
                  nusmv_yylval.node = new_node(nodemgr, NUMBER, NODE_FROM_INT((int)(tmp)), Nil);
                  return(TOK_NUMBER);
                 }

 /* identifier */
[A-Za-z_][A-Za-z0-9_\$#-]*  {
                  const UStringMgr_ptr strings =
                    USTRING_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_STRING_MGR));
                  const NodeMgr_ptr nodemgr =
                    NODE_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_NODE_MGR));

                  nusmv_yylval.node = new_node(nodemgr, ATOM,
                                         (node_ptr)UStringMgr_find_string(strings, yytext),Nil);
                  return(TOK_ATOM);
                 }
\"[^\"]*\"       {
                  const UStringMgr_ptr strings =
                    USTRING_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_STRING_MGR));
                  const NodeMgr_ptr nodemgr =
                    NODE_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_NODE_MGR));

                  nusmv_yylval.node = new_node(nodemgr, ATOM,(node_ptr)UStringMgr_find_string(strings, yytext),Nil);
                  return(TOK_ATOM);
                 } /* Unused token */

.                {
                  const ErrorMgr_ptr errmgr =
                    ERROR_MGR(NuSMVEnv_get_value(__nusmv_parser_env__, ENV_ERROR_MANAGER));

                  ErrorMgr_rpterr(errmgr, "illegal character : \"%s\"", yytext);
                 }
  /* ENDS: input.l.2.75 */
%%
  /* BEGINS: input.l.3.50 */
/***************************************************************  -*-C-*-  ***/
static int nusmv_skip_comment()
{
#ifdef __cplusplus
  return Parser_skip_one_line_comment(yyinput);
#else
  return Parser_skip_one_line_comment(input);
#endif
}

static int nusmv_skip_multiline_comment()
{
#ifdef __cplusplus
  return Parser_skip_multiline_comment(yyinput);
#else
  return Parser_skip_multiline_comment(input);
#endif 
}
  /* ENDS: input.l.3.50 */
