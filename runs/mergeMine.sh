#/bin/sh
sudo git merge --no-commit mine/preventConfigCodeInjection
if [ $? -eq 0 ]
then
	sudo git merge --abort
	sudo git merge mine/preventConfigCodeInjection -m "merged preventConfigCodeInjection"
else
	sudo git merge --abort
fi

#sudo git merge --no-commit mine/settingsSecurity
#if [ $? -eq 0 ]
#then
#	sudo git merge --abort
#	sudo git merge mine/settingsSecurity -m "merged settingsSecurity"
#else
#	sudo git merge --abort
#fi
