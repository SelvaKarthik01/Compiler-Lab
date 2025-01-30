%{
#include<stdio.h>
%}
%token FOR WHILE ID DIGIT LE GE EQ
%right '='
%left '<''>'LE GE EQ
%left '+''-'
%%

S	:ST{printf("Input Accepted");exit(0);};
ST	:FOR'('E';'E2';'E')'DEF
	|WHILE'('E')'DEF
	;
	
	DEF:'{'BODY'}'
	|ST
	|E';'
	|';'
	;

BODY	:BODY BODY
	|ST
	|E';'
	|
	;

E	:ID'='E
	|E'+'E
	|E'-'E
	|E'*'E
	|E'/'E
	|E'>'E
	|E'<'E
	|E LE E
	|E GE E
	|E EQ E
	|E'+''+'
	|E'-''-'
	|DIGIT
	|ID
	;
E2	:E'>'E
	|E'<'E
	|E LE E
	|E GE E
	|E EQ E
	;

%%

#include "lex.yy.c"
int main()
{
printf("Enter expression:\n");
yyparse();
}
yyerror()
{
printf("invalid expression");
}
	
