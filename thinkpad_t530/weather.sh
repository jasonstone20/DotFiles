#!/bin/sh
#☁☂☔❄❅❆☃ ☀☁☂⚡⚐☼
#curl -s wttr.in > weather.txt ; awk "NR==4{print;exit}" ~/weather.txt | cut -d "." -f 2 | awk '{$1=$1;print}' 
#curl -s wttr.in > weather.txt ; awk "NR==4{print;exit}" ~/weather.txt | cut -d "." -f 3 | awk '{$1=$1;print}' 
#curl -s wttr.in > weather.txt ; awk "NR==4{print;exit}" ~/weather.txt | cut -d "." -f 4 | awk '{$1=$1;print}' 
#curl -s wttr.in > weather.txt ; awk "NR==4{print;exit}" ~/weather.txt | cut -d "." -f 5 | awk '{$1=$1;print}' > weather2.txt
#curl -s wttr.in > weather.txt ; awk "NR==4{print;exit}" ~/weather.txt | cut -d "." -f 2 | awk '{$1=$1;print}'
#curl -s wttr.in > weather.txt ; awk "NR==4{print;exit}" ~/weather.txt | cut -d "." -f 3 | awk '{$1=$1;print}'
#
#curl -s wttr.in > weather.txt ; awk "NR==4{print;exit}" ~/weather.txt | cut -d "." -f 4 | awk '{$1=$1;print}'
#curl -s wttr.in > weather.txt ; awk 'NR==4{print $5}' ~/weather.txt > ~/weather2.txt
#curl -s wttr.in > weather.txt ; awk "NR==4{print;exit}" ~/weather.txt > ~/temp.txt ; awk -F '[_.]' '{print $(NF-0)}' temp.txt | awk '{$1=$1;print}' > temp2.txt
#~/weather.sh | sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g"
#cat weather2.txt
##curl -s wttr.in | awk "NR==4{print;exit}" | awk -F '[_.]' '{print $(NF-0)}' | awk '{$1=$1;print}' > temp.txt

##~/clearcolor

 curl -s wttr.in | awk "NR==4{print;exit}" | awk -F '[_.]' '{print $(NF-0)}' | awk '{$1=$1;print}' | ~/clearcolor 
