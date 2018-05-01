#!/bin/bash
gawk -vFPAT='([^,]*)|("[^"]+")' '{ for(i=1; i<NF; i++) if(substr($i,0,1)=="\"") printf "%s,",$i; else printf "\"%s\",",$i; if(NF) printf "\"%s\"",$NF; printf ORS}' $1 >> out.csv
 
