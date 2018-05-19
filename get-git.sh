#!/usr/bin/env bash
#curl -i https://api.github.com/users/glarity

function checkUser() {
		CURL="curl -s https://api.github.com/users/$1"
		PART=$2
		OUTPUT="$($CURL | jq -r .$PART)"
		echo ${OUTPUT}
	}

if [ $# -gt 1 ]; then
	checkUser "$1" "$2"
elif [ $# -lt 2 ]; then
	#statements
	echo "Please enter a user and object."
fi
