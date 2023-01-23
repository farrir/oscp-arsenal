#!/bin/bash

# check if user and group exist and check if user is member in group

read user
read group

if id "$user" &>/dev/null; then
    user_exists=true
else
    user_exists=false
fi

if id "$group" &>/dev/null; then
    group_exists=true
else
    group_exists=false
fi

if [[ "$user_exists" == true && "$group_exists" == true ]]; then
    if id -nG "$user" | grep -qw "$group"; then
        echo "Membership valid!"
    else
        echo "Membership invalid but available to join."
    fi
else
    if [[ "$user_exists" == false && "$group_exists" == false ]]; then
        echo "Both are not found - why are you even asking me this?"
    else
        echo "One exists, one does not. You figure out which."
    fi
fi
