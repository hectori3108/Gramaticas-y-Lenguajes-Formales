/*Entrega 3 Héctor Toribio González*/
/*definimos las cadenas de inicio y fin de comentario*/
comienzaComen \/\*	
finComen \*\/

/*definimos la condicion de arranque exclusiva "borra" para que esta solo afecte a las condiciones de borrado de comentarios*/
%x borra 
/*En primer lugar borramos los comentarios haciendo uso de la condicion de arranque y cuando les hemos borrado devolvemos el programa al estado original en el que modificaremos todo lo demas. Esto hará que se activen el resto de reglas en la que cambiarmeos los "if" por "IF", los "else" por "ELSE", los enteros por "INT"... */
%%

\/\/(.*) ;
{comienzaComen}(.*) BEGIN(borra);
<borra>(.|\n) ;
<borra>.*{finComen} BEGIN 0;
[0-9]+ printf("INT");
[0-9]+([.][0-9]+)?([e][+-]?[0-9]+)? printf("FLOAT");
"if " printf("IF ");
"else " printf("ELSE ");
[a-zA-Z][[:alnum:]]* printf("ID (%s, %d) ", yytext, yyleng);

%%

/*inicializamos el fichero de entrada y llamamos a yylex() que analizará lo que hay en eset fichero de entrada*/
int main(int k,char **argcv)
{
yyin=fopen(argcv[1],"r");
yylex();
return(0);
}

