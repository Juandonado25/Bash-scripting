#!/bin/bash
#
#funcion productoria, dado un arreglo con enteros, los multiplica todos.

num=(10 3 5 7 9 3 5 4)

res=1

for n in ${num[@]}; do
	res=$(($res * $n))
done

echo "$res"

exit 0
