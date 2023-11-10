#!/bin/bash

if [ ! -e DB.txt ]; then
	touch DB.txt
fi

read inform
echo " $inform" >> DB.txt
