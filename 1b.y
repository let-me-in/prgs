%{
	#include "stdio.h"
	#include "stdlib.h"
	#include "string.h"
	int yyerror(const char* s);
	int yylex(void);
	
%}

%start S

%%

S : B C
	;

B : 'a' B 'b'
	|
	;
	
C : 'b' C 'c'
	|
	;

%%

int main()
{
	if(yyparse()==0)
	{
		printf("Valid String\n");
	}
	return 0;
}

int yyerror(const char* s)
{
	printf("INVALID!!\n");
	exit(1);
}
