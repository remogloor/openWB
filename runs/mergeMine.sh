#/bin/sh
sudo git merge --no-commit mine/allowHttpsSecurity
if [ $? -eq 0 ]
then
	sudo git merge --abort
	sudo git merge mine/allowHttpsSecurity -m "merged allowHttpsSecurity"
else
	sudo git merge --abort
fi

sudo git merge --no-commit mine/settingsSecurity
if [ $? -eq 0 ]
then
	sudo git merge --abort
	sudo git merge mine/settingsSecurity -m "merged settingsSecurity"
else
	sudo git merge --abort
fi
