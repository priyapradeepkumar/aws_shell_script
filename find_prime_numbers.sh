#!/bin/sh

#############################################################
#  Program to find all prime numbers until the given number #
#############################################################

echo "Enter the number greater than 2 to find all prime numbers until the given number"

read n

for ((i=2; i<=$n; i++))
do
	isprime=1

	for ((j=2; j<=$i/2; j++))
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

cnt_prime_num=${#prime_num[@]}

if [ $cnt_prime_num -ne 0 ];then
	echo " "
	echo "There are ${cnt_prime_num} prime numbers until the number $n, those are : "
	echo " "
	echo "${prime_num[@]}"
	echo " "
fi
