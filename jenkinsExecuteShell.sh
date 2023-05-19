#!/bin/bash

echo "hi"

for ((i=1; i<6; i++))
do
	echo $i
done

echo "This is my first pipeline"

pwd

cp *.* /var/lib/jenkins/website

python3 work.py
