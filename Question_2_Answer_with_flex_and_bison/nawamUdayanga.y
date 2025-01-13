    %{
    #include <stdio.h>
    #include <stdlib.h>

    extern int yylex();
    extern int yyparse();
    extern FILE *yyin;
    void yyerror(const char *s);

    int location = 1; // Define location here

    %}

    %union {
        char *str;
        int num;
        float fnum;
    }

    %token <str> IDENTIFIER
    %token <num> INTEGER_NUMBER
    %token <fnum> FLOAT_NUMBER
    %token PUNCT_LEFTPARAN PUNCT_RIGHTPARAN PUNCT_LEFTCURL PUNCT_RIGHTCURL PUNCT_LEFTSQBR PUNCT_RIGHTSQBR PUNCT_SEMICOLON PUNCT_COMMA PUNCT_DOT PUNCT_COLON PUNCT_IMPLIES
    %token OP_ADD OP_SUB OP_MUL OP_DIV OP_ASSIGNMENT OP_EQUAL OP_NOTEQUAL OP_LESSTHAN OP_GREATERTHAN OP_LESSTHANOREQUAL OP_GREATERTHANOREQUAL OP_OR OP_AND OP_NOT
    %token RES_ELSE RES_FLOAT RES_FUNC RES_IF RES_IMPL RES_INHERITS RES_INTEGER RES_LET RES_PRIVATE RES_PUBLIC RES_READ RES_RETURN RES_SELF RES_STRUCT RES_THEN RES_VAR RES_VOID RES_WHILE

    %type <str> statement
    %type <str> line

    %%

    input:
        /* empty */
        | input line
    ;

    line:
        statement '\n' { printf("Lexeme: %-15s Token Type: %-30s Line Number: %d\n", $1, $1, location); }
        | error '\n' { yyerrok; }
    ;

    statement:
        IDENTIFIER { $$ = "IDENTIFIER"; }
        | INTEGER_NUMBER { $$ = "INTEGER_NUMBER"; }
        | FLOAT_NUMBER { $$ = "FLOAT_NUMBER"; }
        | PUNCT_LEFTPARAN { $$ = "PUNCT_LEFTPARAN"; }
        | PUNCT_RIGHTPARAN { $$ = "PUNCT_RIGHTPARAN"; }
        | PUNCT_LEFTCURL { $$ = "PUNCT_LEFTCURL"; }
        | PUNCT_RIGHTCURL { $$ = "PUNCT_RIGHTCURL"; }
        | PUNCT_LEFTSQBR { $$ = "PUNCT_LEFTSQBR"; }
        | PUNCT_RIGHTSQBR { $$ = "PUNCT_RIGHTSQBR"; }
        | PUNCT_SEMICOLON { $$ = "PUNCT_SEMICOLON"; }
        | PUNCT_COMMA { $$ = "PUNCT_COMMA"; }
        | PUNCT_DOT { $$ = "PUNCT_DOT"; }
        | PUNCT_COLON { $$ = "PUNCT_COLON"; }
        | PUNCT_IMPLIES { $$ = "PUNCT_IMPLIES"; }
        | OP_ADD { $$ = "OP_ADD"; }
        | OP_SUB { $$ = "OP_SUB"; }
        | OP_MUL { $$ = "OP_MUL"; }
        | OP_DIV { $$ = "OP_DIV"; }
        | OP_ASSIGNMENT { $$ = "OP_ASSIGNMENT"; }
        | OP_EQUAL { $$ = "OP_EQUAL"; }
        | OP_NOTEQUAL { $$ = "OP_NOTEQUAL"; }
        | OP_LESSTHAN { $$ = "OP_LESSTHAN"; }
        | OP_GREATERTHAN { $$ = "OP_GREATERTHAN"; }
        | OP_LESSTHANOREQUAL { $$ = "OP_LESSTHANOREQUAL"; }
        | OP_GREATERTHANOREQUAL { $$ = "OP_GREATERTHANOREQUAL"; }
        | OP_OR { $$ = "OP_OR"; }
        | OP_AND { $$ = "OP_AND"; }
        | OP_NOT { $$ = "OP_NOT"; }
        | RES_ELSE { $$ = "RES_ELSE"; }
        | RES_FLOAT { $$ = "RES_FLOAT"; }
        | RES_FUNC { $$ = "RES_FUNC"; }
        | RES_IF { $$ = "RES_IF"; }
        | RES_IMPL { $$ = "RES_IMPL"; }
        | RES_INHERITS { $$ = "RES_INHERITS"; }
        | RES_INTEGER { $$ = "RES_INTEGER"; }
        | RES_LET { $$ = "RES_LET"; }
        | RES_PRIVATE { $$ = "RES_PRIVATE"; }
        | RES_PUBLIC { $$ = "RES_PUBLIC"; }
        | RES_READ { $$ = "RES_READ"; }
        | RES_RETURN { $$ = "RES_RETURN"; }
        | RES_SELF { $$ = "RES_SELF"; }
        | RES_STRUCT { $$ = "RES_STRUCT"; }
        | RES_THEN { $$ = "RES_THEN"; }
        | RES_VAR { $$ = "RES_VAR"; }
        | RES_VOID { $$ = "RES_VOID"; }
        | RES_WHILE { $$ = "RES_WHILE"; }
    ;

    %%

    void yyerror(const char *s) {
        fprintf(stderr, "Error: %s\n", s);
    }

    int main(int argc, char **argv) {
        if (argc > 1) {
            FILE *file = fopen(argv[1], "r");
            if (!file) {
                fprintf(stderr, "Could not open %s\n", argv[1]);
                return 1;
            }
            yyin = file;
        }
        printf("Lexeme            Token Type                       Line Number\n");
        printf("---------------   ------------------------------   -----------\n");
        yyparse();
        return 0;
    }
