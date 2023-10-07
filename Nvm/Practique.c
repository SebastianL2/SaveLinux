//2^nforks

#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h> 
// EL proceso hijo sule ser = 0 , el proceso padre es !=0
int main (){
int i;
for (i=0; i<3 ; i++)
//if(fork() !=0) break;
fork();
printf ("soy un proceso\n");while(1);

}
//arbol lineal deun mismo proceso se desencadenan el rsto





/*arbol distribuido igualitario cada proceso frok crea otro para cada uno en cadena

int main (){
int i;
for (i=0; i<3 ; i++)
fork() ;
printf ("soy un proceso\n");while(1);
}

*/
