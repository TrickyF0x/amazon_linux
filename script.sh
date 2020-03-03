#!/bin/bash

for((;;))
do

  echo "Script by Semenkov Alexey"
  echo "Script counting user files"
  
  echo "------------------------------------"  

  cur_dir=$(pwd)  
  echo "Current folder is $cur_dir"
    
  for((;;))
  do
    read -p "Enter user name " user_name
	grep "$user_name" /etc/passwd >/dev/null
	if [ $? -ne 0 ]
	then
	  echo "No username found"
	elif
	  break
	fi
  done
  
  echo "Welcome $user_name!"

  for((;;))
  do
    read -p "Enter folder path " folder_path
	if ! [ -d $folder_path ]
	then
	  echo "No such folder exist!"
	elif
	  count=$(find $folder_path -type f -user $user_name | wc -l)
	  echo "Folder $folder_path exist and have $count owned by $user_name"
	  break
	fi
  done

  read -p "New search? (y - restart, other - quit) " decide
  if [ decide!="y" ]
  then
    break
  fi
 
done