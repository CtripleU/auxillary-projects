#!/usr/bin/bash

# Loop through the list of names
for name in $(cat names.csv);
    do

      # Verify whether or not a user exists and echo the result
      if [ $(getent passwd $name) ]
      then
        echo "User $name already exists"

      else

        # Create a variable pass which has the same value as the username
        pass=$(perl -e 'print crypt($ARGV[0], "password")' $name)

        # Add the password to the new user
        useradd -m -p "$pass" "$name"

        # Add the user to the developers group that has been created already
        usermod -a -G developers -s /bin/bash -m -d /home/$name $name

        # Make a .ssh directory for the user and then copy the public key to the new user's authorized_keys folder
        mkdir /home/$name/.ssh
        cp /home/ubuntu/.ssh/id_rsa.pub /home/$name/.ssh/authorized_keys

        echo "User $name successfully created"

      fi
    done