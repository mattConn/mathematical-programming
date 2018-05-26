%option noyywrap
%{

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

bool b = 0; // byte (2 digits)
long h = 0; // converted char storage
int ccount = 0; // tmp char count for testing when to print newline

%}

%%

\n {}

. {

	if(b)
	{
		//printf("%s : %c\n", yytext-1, (int) strtol(yytext-1,NULL,16) );
		h = (int) strtol(yytext-1,NULL,16);
		if( (h > 0x40 && h < 0x5B) || (h > 0x60 && h < 0x7A) ) // print only characters
		{
			ccount++;

			printf("%c", h);

			if(ccount == 10)
			{
				printf("\n");
				ccount = 0; // reset to prevent overflow
			}
		}

		b = false;
	}
	else
		b = true;
}

%%

int main(int argc, char *argv[])
{
    FILE *file;
    file = fopen(argv[1], "r");

	if(argc == 3)
		fseek(file, atoi(argv[2]), SEEK_SET);

    yyset_in(file);
    yylex();
	printf("\n");
    fclose(file);
}
