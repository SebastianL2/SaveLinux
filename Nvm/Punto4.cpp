#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h> 

int main(){
int i,j,k;
for(i=0;i<2;i++){
if(fork()==0){

for(j=0; j<2;j++ ){
   if(fork()==0){
   for(k=0; k<2;k++ ){
 if(fork()==0){
   break;
   }
   }
   break;
 }
}

break;

}
}
while(1);
}
