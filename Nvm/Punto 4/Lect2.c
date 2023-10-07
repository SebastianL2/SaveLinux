#include <stdio.h>
#include <unistd.h>
int main (int argc, char* argv[]){
   char *const argv2 [] = {"Lect","abcdef","ghij",NULL};
  printf ("%s : %i \n",argv[0],getpid());
    execv("./Lect" , argv2); 
    printf("Error");
  return -1;
  }
