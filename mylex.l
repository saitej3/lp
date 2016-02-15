d[0-9]
l[A-Za-z]
operators["!"|"@"|"#"|"$"|"%"|"^"|"&"|"*"|"("|")"|"-"|"+"|"="|"."|"/"|"?"]

%%

int|float|double|long|for|if|else|switch|case|continue|break|return|void|printf|scanf|main {printf("%s is a keyword\n",yytext);}
({operators})({operators})? {printf("%s is an operator\n",yytext);}
({d})({d})* {printf("%s is a number\n",yytext);}
({d})({d})*(.)({d})({d})* {printf("%s is a floating number\n",yytext);};
({l})({l}|{d})* {printf("%s is an indentifier\n",yytext);}
%%

int main()
{
	yylex();
	return 0;
}

