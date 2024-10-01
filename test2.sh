#!/bin/bash
#
#Probando las variables

var1="primero"

mod() {
	local var1="Segundo"
}

mod

echo "$var1"
