%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}

%token ID NUM IF THEN LE GE EQ NE OR AND ELSE
%right '='
%left AND OR
%left '<' '>' LE GE EQ NE
%left '+' '-'
%left '*' '/'
%right UMINUS
%left '!'
%%

S	:ST {printf("Input Accepted.\n");exit(0);};
ST	:IF '(' E2 ')' THEN ST1 ';' ELSE ST1 ';'
	|IF '(' E2 ')' THEN ST1 ';'
	;
ST1 	:ST
	|E
	;
E	:ID '=' E
	|E '+' E
	|E '-' E
	|E '*' E
	|E '/' E
	|E '<' E
	|E '>' E
	|E LE E
	|E GE E
	|E EQ E
	|E NE E
	|E OR E
	|E AND E
	|ID
	|NUM
	;
E2	:E '<' E
	|E '>' E
	|E LE E
	|E GE E
	|E EQ E
	|E NE E
	|E OR E
	|E AND E
	|ID
	|NUM
	;
%%
#include "lex.yy.c"
int main(){
printf("Enter the Expression : ");
yyparse();
return 0;
}

	
