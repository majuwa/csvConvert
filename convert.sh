#!/bin/bash
#mkdir output_folder
gawk -vFPAT='([^,]*)|("[^"]+")' '{ for(i=1; i<NF; i++) if(substr($i,0,1)=="\"") printf "%s,",$i; else printf "\"%s\",",$i; if(NF) printf "\"%s\"",$NF; printf ORS}' $1 |
sed -E '1s/,""//g' |
sed -E '2s/"",//g' |
sed -E '2s/""//' |
sed -z 's/\n/\n\n/g' > out.csv 


