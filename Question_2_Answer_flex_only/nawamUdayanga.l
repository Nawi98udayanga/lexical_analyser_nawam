%{
#include <stdio.h>
int total = 0;
int location = 1;
%}



LETTER [a-zA-Z]
DIGIT [0-9]
NONZERO [1-9]
ALPHANUM ({LETTER}|{DIGIT}|_)
ID {LETTER}{ALPHANUM}*
INTEGER (0|{NONZERO}{DIGIT}*)
FRACTION (\.{DIGIT}*{NONZERO}|\.0)
EXPONENT ([eE][+\-]?{INTEGER})
FLOAT ({INTEGER}{FRACTION}{EXPONENT}?|{INTEGER}{EXPONENT}|{INTEGER}{FRACTION})
INVALID_FLOAT {DIGIT}+\.[0-9]*\.{DIGIT}*

%%

\n          {location++;}   

"("           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_leftParan", location);}
")"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_rightParan", location);}
"{"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_leftCurl", location);}
"}"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_rightCurl", location);}
"["           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_leftSqBr", location);}
"]"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_rightSqBr", location);}
";"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_semiColon", location);}
","           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_comma", location);}
"."           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_dot", location);}
":"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_colon", location);}
"->"          {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Punctuator_implies", location);}
"+"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_Add", location);}
"-"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_Sub", location);}
"*"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_Mul", location);}
"/"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_Div", location);}
"="           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_Assignment", location);}
"=="          {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_Equal", location);}
"<>"          {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_notEqual", location);}
"<"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_lessThan", location);}
">"           {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_greaterThan", location);}
"<="          {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_lessThanOrEqual", location);}
">="          {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_greaterThanOrEqual", location);}
"or"          {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_OR", location);}
"and"         {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_AND", location);}
"not"         {total++; printf("%-15s\t%-30s\t%d\n", yytext, "Operator_NOT", location);}
"else"        {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_ELSE", location);}
"float"       {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_FLOAT", location);}
"func"        {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_FUNCTION", location);}
"if"          {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_IF", location);}
"impl"        {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_IMPLIES", location);}
"inherits"    {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_INHERITS", location);}
"integer"     {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_INTEGER", location);}
"let"         {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_LET", location);}
"private"     {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_PRIVATE", location);}
"public"      {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_PUBLIC", location);}
"read"        {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_READ", location);}
"return"      {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_RETURN", location);}
"self"        {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_SELF", location);}
"struct"      {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_STRUCT", location);}
"then"        {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_THEN", location);}
"var"         {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_VAR", location);}
"void"        {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_VOID", location);}
"while"       {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ReservedWord_WHILE", location);}

{ID}       {total++; printf("%-15s\t%-30s\t%d\n", yytext, "ID", location);}
{INTEGER}  {total++; printf("%-15s\t%-30s\t%d\n", yytext, "INTEGER_NUMBER", location);}
{FLOAT}    {total++; printf("%-15s\t%-30s\t%d\n", yytext, "FLOAT_NUMBER", location);}


[ \t\n]+                            ; /* ignore whitespace */
"//"[^\n]*                          ; /* ignore Inline comments */
"/*"(.|\n)*?"*/"                    ; /* ignore Block comments */
.                                   {fprintf(stderr, "Warning: Unrecognized character '%s' at location %d\n", yytext, location);}
{NONZERO}+{LETTER}+ { fprintf(stderr, "Warning: Invalid identifier '%s' starting with a digit at location %d\n", yytext, location); } 
{INVALID_FLOAT} { fprintf(stderr, "Error: Invalid floating-point literal '%s' at location %d\n", yytext, location); }
"/*"([^*]|(\*+[^*/]))*$             { fprintf(stderr, "Error: Unclosed block comment at location %d\n", location); }
%%

int main()
{
    printf("%-15s\t%-30s\t%s\n", "Lexeme", "Token Type", "Line Number");
    printf("---------------\t------------------------------\t-----------\n");

    yylex();

    printf("\nTotal Tokens = %d\n", total);

    return 0;
}

int yywrap()
{
    return 1;
}
