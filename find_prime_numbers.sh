#!/bin/sh
 

echo "Enter the number greater than 2 to find all prime numbers until the given number"

read n

for ((i=2; i<=$n; i++))
do
	isprime=1

	for ((j=2; j<$i; j++))
	do
		if [ $(($i % $j)) == 0 ];then
			isprime=0
			break	
		fi

	done

	if [ $isprime == 1 ];then
		prime_num+=($i)
	fi

done

if [ ${#prime_num[@]} -ne 0 ];then
	echo "\n"
	echo "There are ${#prime_num[@]} prime numbers until the number $n, those are : \n"
	echo "${prime_num[@]}"
fi
