   #!/bin/bash
   sb= `echo ls -l /home/sebastian/Escritorio/compartido`
   

   sn= `echo ls -l ~/.local/share/Trash/files`
   
   reg=`echo sudo last -f /var/log/wtmp`
  
    faillog= `echo grep "authentication failure" /var/log/auth.log`
    
   echo `ls -l /home/sebastian/Escritorio/compartido '\n'` >> /home/sebastian/Escritorio/compartido/directorios.txt 
   echo `ls -l ~/.local/share/Trash/files` >> /home/sebastian/Escritorio/compartido/Papelera.txt
   echo `sudo last -f /var/log/wtmp` >> /home/sebastian/Escritorio/compartido/UserLog.txt
   echo `grep "authentication failure" /var/log/auth.log` >> /home/sebastian/Escritorio/compartido/FalloLog.txt
  
   
   
   
   
   

