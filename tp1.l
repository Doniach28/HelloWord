%{
  int Nb_id =0
%}

lettreMaj [A-Z]
chiffre [0-9]
lettre [a-z]

id{lettreMaj}({chiffre}|{lettre})+

%%
{id} {Nb_id++;ECHO;printf("identificateur reconnue");}
%%

int wrap (void)
{
   return 1;
}

int main()
{
   yylex();
   printf("le nombre des identificateurs = %d/n",Nb_id);
}