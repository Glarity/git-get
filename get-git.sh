#!/usr/bin/env bash
#curl -i https://api.github.com/users/glarity

function checkUser() {
		CURL="curl -s -i https://api.github.com/users/$1"
		PART="name"
		OUTPUT="$($CURL | jq .$PART)"
		echo ${OUTPUT}
	}

if [ $# -ne 0 ]; then
	checkUser "$1"
elif [ $# -eq 0 ]; then
	#statements
	echo "Please enter a user"
fi
