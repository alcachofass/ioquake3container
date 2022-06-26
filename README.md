# ioquake3container

An ioquake3 server running in a Docker Container.

*.pk3 files are NOT included here. These come from the Quake 3 Arena CD, Team Arena CD, and Point Release 1.32. Check the docker-compose.yml file to see how to mount the directories. 


## Volume Mount Explanation
The only required mounts are your baseq3 folder directory and custom launcher.sh script. 
 - "${PWD}/excessiveplus:/usr/lib/ioquake3/excessiveplus"
	* In this example, the excessiveplus mod directory is also mounted.
 - "${PWD}/baseq3:/usr/lib/ioquake3/baseq3"
	* baseq3 folder mount.
 - "${PWD}/launcher.sh:/usr/lib/ioquake3/launcher.sh"
	* The container will execute launcher.sh, so we mount the file. 
 - "${PWD}/.q3a:/home/q3user_svc/.q3a"
	* ioquake3 saves games.log in the user's .q3a folder. We mount the folder to allow access outside of the container.


