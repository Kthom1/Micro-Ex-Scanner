#include <stdio.h>
#include "definitions.h"

extern int yylex();
extern int yylineno;
extern char *yytext;

int main(void)
{
  int token;
  int position = 1;
  token = yylex();
  while (token)
  {
    if (token != IGNORE)
    {
      printf("Token number = %d, value is %s\n", position, yytext);
      position++;
    }
    token = yylex();
  }
  return 0;
}