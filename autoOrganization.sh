#!/bin/bash
while [ true ]
do 
  cd ~/Downloads
  #countFiles=$( ls | wc -l)
  #LS=('$(ls)') 
  for i in `ls -1`;  
  do
    fileType=$( file --mime-type $i )
    case $fileType in 
      "$i: image/jpeg")
          echo "test"
      ;;
    esac
    #if [ "$fileType" = "$i: image/jpeg" ];
    #then
    #  echo "test"
    #fi
  done
done
#file --mime-type -ls | wc -l