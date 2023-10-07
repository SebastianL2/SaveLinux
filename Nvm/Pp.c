
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
int main (){
int pid, status;
switch (pid=fork()) {
case -1: /* Gestión del error */
exit (1);
break;
case 0: /* Proceso hijo */
printf ("\n Proceso hijo. PID = %d \n", pid);
break;
default: /* Proceso padre */
printf ("\n Proceso padre. PID = %d \n", pid);
wait (&status); /* espera al final del proceso hijo */
break;
} /* fin del switch */
printf ("\n Fin de la ejecución \n");
return 0;
} /* fin de la función main */

