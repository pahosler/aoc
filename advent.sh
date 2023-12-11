#!/bin/sh

# get $TOKEN from .env
if [ -f .env ]
then
    export $(cat .env | xargs)
fi

if [ -z "$1" ]
then
	echo "usage: ./advent.sh 3"
	exit
fi

echo $1

if [ $1 -gt 25 ] || [ $1 -lt 0 ]
then
    echo "ERROR: Must be two digits 0 -> 25"
    exit
fi

# curl -v -b "session=$TOKEN" "https://adventofcode.com/2023/day/$1" -o day$1.html
curl -v -b "session=$TOKEN" "https://adventofcode.com/2023/day/$1/input" -o src/bin/day$1.input

# All the template copying
cp src/main.rs src/bin/day$1.rs
touch src/bin/day$1.test1
touch src/bin/day$1.test2

sed -i "s\day1\day$1\g" src/bin/day$1.rs
