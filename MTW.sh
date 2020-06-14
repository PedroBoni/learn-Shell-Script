#!/bin/bash
clear
echo -e "Making template folders web project.\n"
cd ~/Projects 
if [ -z $1 ]
then
  echo -e "No parameter found!\n" 
  echo -e "Try './makeTemplateWEB.sh {Name_of_your_project}'"
  echo -e "Note: remove brackets!"
else
  folder=~/Projects/$1
  if [ -d $folder ]
  then
    echo "A directory with that name already exists!"
  else
    mkdir $1
    echo "Making folder $1"
    cd $1
    mkdir css
    echo "Making folder css"
    mkdir js
    mkdir img
    echo "Making folder img"
    touch index.html
    echo "Making index.html file"
    cd css
    touch main.css
    echo "Making main.css file"
    cd ../js
    touch main.js
    echo "Making main.js file"
    cd ..
    code .
    echo -e "Opening VScode in project "$1"\n"
    echo "Your project is in the directory $1"
  fi
fi