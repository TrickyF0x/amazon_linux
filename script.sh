for((;;))
do
echo "Выберите действие:"
echo "show - показать текущий каталог;"
echo "down - перейти в каталог"
echo "up - подняться на уровень выше"
echo "quit - завершить работу сценария"
mydir=$(pwd)
read -p "Выберите действие: " choose

if [ "$choose" == "show" ]
then
	pwd
elif [ "$choose" == "down" ]
	then 
		
		echo "Выберите каталог, в который хотите перейти"
		ls -R --color
		for file in mydir
		do
			if [ -d "$file" ]
				then
					echo "$file is a directory"
			elif [ -f "$file" ]
				then
					echo "$file is a file"
			fi
		done
		echo "Указанный каталог: "
	read catalog
	cd $catalog
	pwd


elif [ "$choose" == "up" ]
	then
		 cd ../
		 pwd
	
elif [ "$choose" == "quit" ]
	then
		exit 1;
fi

done