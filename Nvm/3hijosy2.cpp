//Papa con 3 hijos y cada hijo tiene 2
#include <stdio.h>
#include <unistd.h>
//#include 
int main(void)
{
 pid_t pid;
 int x,y;
 
 for(x=1;x<=3;x++)
 {
  while(1);
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
   
   for(y=1;y<=2;y++)
   {
    pid=fork();
     if(pid)
     {
      printf("Soy el proceso %d\n",getpid());
      sleep(2);
      _exit(0);
     }
     else
     {
      printf("soy el hijo %d, mi padre es %d\n",getpid(),getppid());
      sleep(2);
      _exit(0);
     }
   }
   
   _exit(0);
  }
  }
  return 0;
}  

