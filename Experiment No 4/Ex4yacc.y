%{
#include<stdio.h>
%}
%token NUM ID TYPE RETURN
%right '='
%left '+''-'
%left '*''/'

%%
S	:FUN{printf("Input Accepted/n");exit(0);};

FUN	:TYPE ID'('PARAM')''{'BODY'}';
PARAM	:PARAM','TYPE ID
	|TYPE ID
	|TYPE ID'='NUM
	|TYPE ID'['']'
	|
	;
BODY	:BODY BODY
	|PARAM';'
	|RETURN E';'
	|
	;
E	:ID'='E
	|E'+'E
	|E'-'E
	|E'*'E
	|E'/'E
	|ID'['NUM']''='E
	|ID'['NUM']'
	|NUM
	|ID
	;
%%
#include "lex.yy.c"
main()
{
	printf("Enter Expression : ");
	yyparse();
}
