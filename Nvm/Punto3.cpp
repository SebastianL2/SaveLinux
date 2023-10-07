#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h>

int main (){
int i,j;
int pid;
int nuevo;
for ( i= 0; i< 2; i++) { 
      pid= getpid();
     for (j= 0; j< i+2; j++) {
          nuevo= fork(); 
          if (nuevo!= 0) {

              nuevo= fork(); 
        break;
          }
      }
     if (pid!= getpid())
          break;
}
while(1);
}
