#!/bin/bash

#Add a new user with a default password

USERNAME="$1"
DEFAULT_PASS="Welcome123"

if [[ -z "$USERNAME" ]]; then
	echo "Usage: $0 <username>"
	exit 1
fi

sudo useradd -m "$USERNAME"
echo "$USERNAME:$DEFAULT_PASS" | sudo chpasswd

echo "User $USERNAME created with default password: $DEFAULT_PASS"
