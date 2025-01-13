
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IDENTIFIER = 258,
     INTEGER_NUMBER = 259,
     FLOAT_NUMBER = 260,
     PUNCT_LEFTPARAN = 261,
     PUNCT_RIGHTPARAN = 262,
     PUNCT_LEFTCURL = 263,
     PUNCT_RIGHTCURL = 264,
     PUNCT_LEFTSQBR = 265,
     PUNCT_RIGHTSQBR = 266,
     PUNCT_SEMICOLON = 267,
     PUNCT_COMMA = 268,
     PUNCT_DOT = 269,
     PUNCT_COLON = 270,
     PUNCT_IMPLIES = 271,
     OP_ADD = 272,
     OP_SUB = 273,
     OP_MUL = 274,
     OP_DIV = 275,
     OP_ASSIGNMENT = 276,
     OP_EQUAL = 277,
     OP_NOTEQUAL = 278,
     OP_LESSTHAN = 279,
     OP_GREATERTHAN = 280,
     OP_LESSTHANOREQUAL = 281,
     OP_GREATERTHANOREQUAL = 282,
     OP_OR = 283,
     OP_AND = 284,
     OP_NOT = 285,
     RES_ELSE = 286,
     RES_FLOAT = 287,
     RES_FUNC = 288,
     RES_IF = 289,
     RES_IMPL = 290,
     RES_INHERITS = 291,
     RES_INTEGER = 292,
     RES_LET = 293,
     RES_PRIVATE = 294,
     RES_PUBLIC = 295,
     RES_READ = 296,
     RES_RETURN = 297,
     RES_SELF = 298,
     RES_STRUCT = 299,
     RES_THEN = 300,
     RES_VAR = 301,
     RES_VOID = 302,
     RES_WHILE = 303
   };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define INTEGER_NUMBER 259
#define FLOAT_NUMBER 260
#define PUNCT_LEFTPARAN 261
#define PUNCT_RIGHTPARAN 262
#define PUNCT_LEFTCURL 263
#define PUNCT_RIGHTCURL 264
#define PUNCT_LEFTSQBR 265
#define PUNCT_RIGHTSQBR 266
#define PUNCT_SEMICOLON 267
#define PUNCT_COMMA 268
#define PUNCT_DOT 269
#define PUNCT_COLON 270
#define PUNCT_IMPLIES 271
#define OP_ADD 272
#define OP_SUB 273
#define OP_MUL 274
#define OP_DIV 275
#define OP_ASSIGNMENT 276
#define OP_EQUAL 277
#define OP_NOTEQUAL 278
#define OP_LESSTHAN 279
#define OP_GREATERTHAN 280
#define OP_LESSTHANOREQUAL 281
#define OP_GREATERTHANOREQUAL 282
#define OP_OR 283
#define OP_AND 284
#define OP_NOT 285
#define RES_ELSE 286
#define RES_FLOAT 287
#define RES_FUNC 288
#define RES_IF 289
#define RES_IMPL 290
#define RES_INHERITS 291
#define RES_INTEGER 292
#define RES_LET 293
#define RES_PRIVATE 294
#define RES_PUBLIC 295
#define RES_READ 296
#define RES_RETURN 297
#define RES_SELF 298
#define RES_STRUCT 299
#define RES_THEN 300
#define RES_VAR 301
#define RES_VOID 302
#define RES_WHILE 303




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 14 "nawamUdayanga.y"

        char *str;
        int num;
        float fnum;
    


/* Line 1676 of yacc.c  */
#line 156 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


