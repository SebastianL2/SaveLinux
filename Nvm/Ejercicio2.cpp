#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h>

int main( )
{
while(0);
pid_t pid;
int status;
pid = fork();
if (pid != 0)
{
printf("Soy el proceso padre %d\n",getpid());
while (pid != wait(&status));


}
else
{


sleep(5);
printf("Soy el proceso hijo %d\n",getpid());
exit(5);

}
pid = fork();
if (pid != 0)
{

while (pid != wait(&status));


}
else
{

sleep(1);
exit(1);


}

}

