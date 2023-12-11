%{
#include<stdio.h>
int v=0,c=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
[\n] {printf("no of vowels:%d,no of consonants:%d",v,c);
exit(0);
}
%%
int main()
{
printf("Enter the input");
yylex();
}
int yywrap()
{
return 1;
}