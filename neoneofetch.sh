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
echo -e "\e[32mUsername:\e[0m" $USER

#Display memory usage
echo -ne "\e[32mMemory:\e[0m " ; free -h | grep Mem | awk '{print $3 "/" $2}'

#Display CPU name
echo -ne "\e[32mCPU model: \e[0m" ; lscpu | grep "Model name" | cut -d ":" -f2 | xargs

#Display CPU usage
echo -ne "\e[32mCPU Usage:\e[0m " ; top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4"%"}'

#Display system uptime
echo -ne "\e[32mSystem uptime:\e[0m " ; uptime | awk '{print $1}'

#Get current shell
echo -e "\e[32mShell:\e[0m "$SHELL    # Find a better way to do this, $SHELL is unreliable 

#Current distro
echo -ne "\e[32mDistro:\e[0m " ; grep NAME /etc/os-release | cut -d "\"" -f2 | head -n 1

#Print running processes
echo -ne "\e[32mRunning Processes:\e[0m " ; ps -u "$(echo $(printf '%s\n' $(users) | sort -u))" o user= | sort | uniq -c | sort -rn | awk '{print $1}'

#Kernel version
echo -ne "\e[32mKernel: \e[0m" ; uname -r

#Time
echo -ne "\e[32mTime: \e[0m" ; date | awk '{print $4 $5 " ""("$1")"}'

