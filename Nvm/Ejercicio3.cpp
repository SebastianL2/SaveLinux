#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
int main(){

pid_t pid;// -> id del proceso pid
int status;
 
pid = fork();// -> se le asigna el procesos a la variable pid
if (pid != 0) /* -> se especifica que si el pid se encuentra en un proceso diferente de padre osea hijo haga lo siguiente:*/
{

 printf("Soy el proceso padre %d\n",getpid()); //-> hacemos uso de un print para ver el proceso

}
else // si no es un proceso diferente del padre entonces se trata del padre:
{

printf("Soy el proceso hijo/padre %d\n",getpid());
while (pid = wait(&status)); 
}
pid = fork();// -> se le asigna el procesos a la variable pid de nuevo y al parece res el mismo proceso que lo visto anteriormente*/
if (pid != 0)
{

while (pid != wait(&status));
 printf("Soy el proceso padre %d\n",getpid());
 exit(1);
}
else
{

printf("Soy el proceso hijo n %d\n",getpid());

}

while(1);
}


