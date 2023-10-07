#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
int main(){
int nuevo;
for (int num= 0; num< 2; num++) { 
   nuevo= fork(); 
    if (nuevo== 0)
        break;
}
nuevo= fork(); 
nuevo= fork(); 
while(1);
}

/*
for (int num= 0; num< 2; num++) { 
   pid= fork(); 
    if (pid== 0)
    printf("proceso hijo  id: % d \n",getpid());
        break;
}
pid= fork(); 
printf("proceso id: % d \n",getpid());
pid= fork(); 
printf("proceso id: % d \n",getpid());
while(1);
}*/
