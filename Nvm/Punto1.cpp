#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
int main () {
int num;
pid_t pid;
for (num= 0; num< 3; num++) {
     pid= fork();
        if (pid!= 0)
           break;
   sleep (random() %3);

}
if (pid!= 0)
printf ("Fin del proceso de PID %d.\n", wait (NULL));

return 0;


}

