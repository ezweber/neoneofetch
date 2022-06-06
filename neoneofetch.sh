#!/bin/bash

cat << "EOF"
         _nnnn_                      
        dGGGGMMb     ,"""""""""""""".
       @p~qp~~qMb    | NeoNeofetch! |
       M|@||@) M|   _;..............'
       @,----.JM| -'
      JS^\__/  qKL
     dZP        qKRb
    dZP          qKKb
   fZP            SMMb
   HZM            MMMM
   FqM            MMMM
 __| ".        |\dS"qML
 |    `.       | `' \Zq              
_)      \.___.,|     .'              
\____   )MMMMMM|   .'                
     `-'       `--'                  
------------------------------------- 
EOF
echo ""

#Get current user
echo "Username:" $USER

#Display memory usage
echo -n "Memory: " ; free -h | grep Mem | awk '{print $3 "/" $2}'

#Display CPU name
echo -n "CPU model:" ; cat /proc/cpuinfo | grep "model name" | tail -n1 | cut -d ":" -f2

#Display CPU usage
echo -n "CPU Usage: " ; top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4"%"}'

#Display system uptime
echo -n "System uptime: " ; uptime | awk '{print $1}'

#Get current shell
echo "Shell: "$SHELL

#Current distro
echo -n "Distro: " ; cat /etc/os-release | grep NAME | cut -d "\"" -f2 | head -n 1
