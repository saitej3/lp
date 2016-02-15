
d[0-9]
l[A-Za-z]
%{
	int idcnt=0,kwcnt=0;
%}

%%

int|float|for {kwcnt++; printf("%s is a keyword \n",yytext);}

({l})({l}|{d})* {idcnt++; printf("%s is an identifier\n",yytext);}

\n {printf("no of keyword are %d and no of identifiers are %d",kwcnt,idcnt);}

%%

int main()
{
	printf("Enter input\n");
	yylex();
	return 0;
}
