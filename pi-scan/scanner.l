/*===============================================
To compile, fist run flex:
	flex scanner.l
This will generate lex.yy.c
(scanner.l will be this file you're reading now)

Then compile the newly generated c file:
	<compiler> lex.yy.c -lfl -o scanner.out
"-lfl" will link the appropriate libraries.

scanner.out will be the compiled binary.
===============================================*/
%option noyywrap
%{
// %option noyywrap: when compiling, eliminates need for -lfl flag

// declarations and inclusions
// inserted directly into generated c file 
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

bool b = false; // byte (2 digits)

%}

%%

\n {}

. {
	if(b)
	{
		//printf("%s : %c\n", yytext-1, (int) strtol(yytext-1,NULL,16) );
		printf("%c", (int) strtol(yytext-1,NULL,16) );
		b = false;
	}
	else
		b = true;
}

%%

int main(int argc, char *argv[])
{
	// main function
	// inserted directly into generated c file 

    FILE *file;
    file = fopen(argv[1], "r");

    yyset_in(file);
    yylex();
    fclose(file);
}
