#!/bin/bash

function code_clone(){
	echo "Cloning The Django app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

function install_requirments(){
	echo "Installing Dependencies..."
	sudo apt-get install docker.io nginx -y
}

function required_restart(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

function deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "*****Deolpyment Start*****"

if ! code_clone;
	then
	echo "The directory is alredy exixts***"
	cd django-notes-app
fi

if ! install_requirments;
	then
	echo "Instalation Failed"
	exit 1
fi

if ! required_restart;
	then
	echo "System fault identified"
	exit 1
fi

deploy
echo "*****Deolpyment Successfull*****"
