%%
[ \n\t] ;
for return FOR;
while return WHILE;
[a-zA-Z_]([a-zA-Z_])* return ID;
[0-9]+ return DIGIT;
"<=" return LE;
">=" return GE;
"==" return EQ;
. return yytext[0];
%%
int yywrap()
{
return 1;
}
