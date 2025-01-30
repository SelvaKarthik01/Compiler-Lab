%%
[\n \t]	;
int|float|char|double	return TYPE;
return	return RETURN;
[0-9]+	return NUM;
[a-zA-Z_]([a-zA-Z0-9_])*	return ID;
.	return yytext[0];
%%


