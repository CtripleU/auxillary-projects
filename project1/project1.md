# AUX PROJECT 1: SHELL SCRIPTING

**Project details** - Onboard 20 new Linux users onto a server. Create a shell script that reads a csv file that contains the first name of the users to be onboarded.

1. Create the project folder called **Shell**

`mkdir Shell` and `cd Shell`

![Screenshot from 2022-04-29 01-58-19](https://user-images.githubusercontent.com/34113547/165867550-287fc63c-848d-42e2-8d0d-b83fbaa745c4.png)

2. Create a csv file **names.csv** and insert some names into it. Put one name on each line

`touch names.csv`

`vim names.csv`

![Screenshot from 2022-04-29 02-01-28](https://user-images.githubusercontent.com/34113547/165867663-410091e4-7700-4f19-b295-b698d948bc78.png)

![Screenshot from 2022-04-29 02-01-17](https://user-images.githubusercontent.com/34113547/165867605-4e784a04-c585-4d44-a475-58029a2debe9.png)

3. Create a group called developers

`sudo groupadd developers`

![Screenshot from 2022-04-29 02-02-15](https://user-images.githubusercontent.com/34113547/165867686-9595d304-e720-4215-8d52-0efda5b9114c.png)

4. Update current user with the correct public key and private key.

Navigate back to the main directory `cd ..` 

`cd .ssh`

`touch id_rsa.pub` This is a file for the public key

![Screenshot from 2022-04-29 02-05-12](https://user-images.githubusercontent.com/34113547/165867728-dfc416fd-3a12-4f27-a871-1d460438376a.png)

`vi id_rsa.pub`

![Screenshot from 2022-04-29 02-06-07](https://user-images.githubusercontent.com/34113547/165867740-11ffbc54-f0c4-4ef0-9c19-d2bb0b4b1eb9.png)

`touch id_rsa` This is a file for the private key

`vi id_rsa`

![Screenshot from 2022-04-29 02-06-55](https://user-images.githubusercontent.com/34113547/165867795-5d9aa5ab-7fed-4d5a-8cce-dff82a8eb452.png)

![Screenshot from 2022-04-29 02-07-32](https://user-images.githubusercontent.com/34113547/165867857-cbf7e266-d2df-4f73-84ba-6862c4c883e8.png)

5. Check the list of current users

`cat /etc/passwd`

![Screenshot from 2022-04-29 02-09-52](https://user-images.githubusercontent.com/34113547/165867873-ca078e41-4246-4595-b30e-e1c3739e18f3.png)

6. Write a script that reads the **names.csv** file and creates new users, adds a password to each user, adds the user to the **developers** group previosly created, and copies the sudo user’s SSH configuration to the new user

`cd.. && cd Shell` 

`touch onboarding-users.sh`

`vi onboarding-users.sh`

![Screenshot from 2022-04-29 02-13-02](https://user-images.githubusercontent.com/34113547/165867920-5e2dfa39-0efe-4ced-8b0e-bb6e77d1c66c.png)

![Screenshot from 2022-04-29 02-12-35](https://user-images.githubusercontent.com/34113547/165867939-5400becf-60a9-4ea6-8799-14070be50682.png)

7. Make the script executable 

`chmod +x onboarding-users.sh`

![Screenshot from 2022-04-29 02-13-29](https://user-images.githubusercontent.com/34113547/165867995-96c359d2-d25e-4a7b-a929-29bb5c02b03f.png)

8. Run the script 

`sudo ./onboarding-users.sh`

![Screenshot from 2022-04-29 02-13-52](https://user-images.githubusercontent.com/34113547/165868013-27b0d155-91d9-4810-8035-ed1f3e32fc59.png)

9. List users on the server

`cat etc/passwd`

![Screenshot from 2022-04-29 02-14-33](https://user-images.githubusercontent.com/34113547/165868031-9c9af502-bb35-4d09-bb41-5fa37b39a2df.png)

As shown, the users have been successfully created.


10. Testing connection to the created users

![Screenshot from 2022-04-29 02-18-21](https://user-images.githubusercontent.com/34113547/165868064-a6a70f64-258f-4c84-8caf-fa92f66c8818.png)

