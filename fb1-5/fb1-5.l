%{
#include "fb1-5.tab.h"
#include <stdlib.h>
%}

%%
 
"+"    { return ADD; }
"-"    { return SUB; } 
"*"    { return MUL; }
"/"    { return DIV; }
"|"    { return ABS; }
[0-9]+ { yylval = atoi(yytext); return NUMBER; }
\n     { return EOL; }
[ \t]  { /* ignore whitespace */ }
.      { printf("Mystery character %c\n", *yytext); } 

%%

