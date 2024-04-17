#!/bin/bash

function create_file(){
	mkdir demo1
}

if ! create_file;
	then
	echo "File alredy exist"
	exit 1
fi
echo "File is created"
