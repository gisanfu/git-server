#!/bin/bash

new_repo=$1

if [ "$new_repo" == '' ]; then
	echo '請輸入您的repo名稱'
	exit
fi

mkdir $new_repo
cd $new_repo
git --bare init
git update-server-info
cd ..
chown -R apache:apache $new_repo
