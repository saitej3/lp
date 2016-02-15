p [ \t]

%{ 	
	#include <fcntl.h>
	#include <string.h>
	#include <stdio.h>	
	int count =0;
%}

%%
{p}{p}* { fprintf(yyout," ",yytext);}
%%

int main()
{
	yyin= fopen("file.txt","r");
	yyout=fopen("filewrite.txt","w");
	yylex();
	//fputs(yytext,yyout);
	fclose(yyin);
	fclose(yyout);
	return 0;
}


