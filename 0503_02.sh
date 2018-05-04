#! /bin/bash

# print all system variable
printf "path=%s\n currentDir=%s\n user=%s\n uudi=%s\n defaultShell=%s\n" ${PATH} ${PWD} ${USER} ${UID} ${SHELL}

# print vim's all vaiables : pgrep vim
currPID=18703
cat /proc/${currPID}/environ | tr '\0' '\n'
echo "the len of" ${currPID} "is" ${#currPID}

if [ $UID -ne 0 ]; then
  echo Not Super user, please run as root
else
  echo Super user
fi

# print current shell:work Directory
echo $PS1
