# Horace Yip 10184901
#!/bin/bash

#filepath=$(readlink -f repositoryBackup.sh)
#*1*** $filepath

filedate=$(date +%Y%m%d%H)
filename="backup$filedate.tgz"
tar zcvf $filename $1

echo backup $filenmae created successfully!

git init $1
git pull
git add $filename
git commit -m "backup"

echo Backup $filename committed to the local git repository

git push https://$3:$4@$2 --all

echo Backup $filename pushed to the remote git repository $2 
