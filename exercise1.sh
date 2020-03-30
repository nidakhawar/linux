#! /bin/bash

echo "what is your username?"
read user
users="/etc/passwd"
try="$(grep ${user} ${users})"
if ! [ -z "${try}" ]; then
    echo "You are logged in"
else
    echo "Not logged in!"
fi
