%{
	#include<stdio.h>
%}

%%

"\n"|"\t"|" " {printf("\nWhite Space");}
#.* {printf("\n%s - preprocessor directive",yytext);}
int|float|double|char|while|for|if|else|scanf|printf|main|getch {printf("\n%s-keyword",yytext);}
"++"|"--" {printf("\n%s - unary operator",yytext);}
"+"|"-"|"*"|"/"|"%" {printf("\n%s - Arithmetic Operator",yytext);}
"<"|">"|"<="|">="|"==" {printf("\n%s - Relational Operator",yytext);}
"&&"|"||"|"!" {printf("\n%s - Logical Operator",yytext);}
"="|"+="|"-="|"*=" {printf("\n%s - Assignment Operator",yytext);}
[a-zA-Z_]([a-zA-Z0-9_])* {printf("\n%s - Identifier",yytext);}
[0-9]+ {printf("\n%s - digit",yytext);}
"{" {printf("\n%s - block begins",yytext);}
"}" {printf("\n%s - block exits",yytext);}
[();,] {printf("\n%s - separator",yytext);}
\".*\" {printf("\n%s - String",yytext);}

%%
int yywrap()
{}
int main(int argc,char **argv)
{
	if(argc>1)
	{
		FILE *file;
		file=fopen(argv[1],"r");
		if(!file)
   {
    printf("Couldn't Open File %s",argv[1]);
    exit(0);
   }
   yyin=file;
 }
 yylex();
 return 0;
}
