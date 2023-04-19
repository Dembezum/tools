	
#!/bin/env bash

t='abcd'

declare -a fg
declare -a bg
declare -a fg2

for i in {0..7}; do
   fg[$i]="\e[3${i}m"
   fg2[$i]="\e[1;3${i}m"
   bg[$i]="\e[4${i}m"
done

echo -en "       "
echo ${bg[@]}

for f in ${fg[@]} ${fg2[@]}; do
   echo -en "$f $t "
   for b in ${bg[@]}; do
      echo -en "$f $b $t \e[00m"
   done
   echo " $f"
done
