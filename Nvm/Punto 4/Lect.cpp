#include <stdio.h>
#include <unistd.h>
int main (int argc, char*argv[0]){
  printf ("%s : %i \n",argv[0],getpid());
  
  for (int i =0; i< argc; i++)
  {
  printf("argumento %d, %s \n",i,argv[i]);
  }
}

