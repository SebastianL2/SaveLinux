//padre con 3 hijos 
#include <stdio.h>
#include <unistd.h>
int main(void)
{
 pid_t pid;
 int x;
 
 for(x=1;x<=3;x++)
 {
//while(1); 
  pid=fork(); 
  if(pid)
  {
   printf("Soy el proceso %d\n",getpid());
   sleep(2);
  }

  else
  {
   printf("soy el hijo %d, mi padre es %d\n",getpid(),getppid());
   sleep(2);
   _exit(0);
  }

  
 }
 return 0;
}

