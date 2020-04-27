%{
  #include "definitions.h"
%}
%option nounput yylineno

%%
[Bb][Ee][Gg][Ii][Nn] return LEGAL;
[Ee][Nn][Dd] return LEGAL;
[Rr][Ee][Aa][Dd] return LEGAL;
[Ww][Rr][Ii][Tt][Ee] return LEGAL;
[Ii][Dd] return LEGAL;
[Ii][Ff] return LEGAL;
[Tt][Hh][Ee][Nn] return LEGAL;
[Ee][Ll][Ss][Ee] return LEGAL;
[Ee][Nn][Dd][Ii][Ff] return LEGAL;
[Ff][Oo][Rr] return LEGAL;
[Ee][Nn][Dd][Ff][Oo][Rr] return LEGAL;
[Tt][Oo] return LEGAL;
[Aa][Ss] return LEGAL;
[Ww][Hh][Ii][Ll][Ee] return LEGAL;
[Ee][Nn][Dd][Ww][Hh][Ii][Ll][Ee] return LEGAL;
[Dd][Ee][Cc][Ll][Aa][Rr][Ee] return LEGAL;
[Ii][Nn][Tt][Ee][Gg][Ee][Rr] return LEGAL;
[Rr][Ee][Aa][Ll] return LEGAL;
ScanEof return LEGAL;
"," return LEGAL;
"<" return LEGAL;
"<=" return LEGAL;
">" return LEGAL;
">=" return LEGAL;
"("  return LEGAL;
")" return LEGAL;
";"  return LEGAL;
":="  return LEGAL;
"+"  return LEGAL;
"-"  return LEGAL;
"*"  return LEGAL;
"/"  return LEGAL;
"=="  return LEGAL;
"!=" return LEGAL;
0|[1-9][0-9]* return LEGAL;
\"[^"\n]*\" return LEGAL;
(((0|[1-9][0-9]*)\.)|([0-9]*\.[0-9]+)) return LEGAL;
[a-zA-Z][0-9a-zA-Z_]* return LEGAL;
[ \t\n] return IGNORE;
"%%".*$ return IGNORE;
. printf("ILLEGAL CHARACTER\n");
%%

int yywrap(void)
{
	return 1;
}