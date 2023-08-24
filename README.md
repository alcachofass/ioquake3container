# ioquake3container

An ioquake3 server running in a container.

*.pk3 files are NOT included here. These come from the Quake 3 Arena CD, Mods, Team Arena CD, and Point Release 1.32. Check the docker-compose.yml file to see how to mount  directories. 

## Building the Container

* docker build -t myq3srv .

## Volume Mount Explanation
The only required mounts are your baseq3 folder directory and custom launcher.sh script. 
 - "${PWD}/excessiveplus:/usr/lib/ioquake3/excessiveplus"
	* In this example, we also mount the excessiveplus mod directory.
 - "${PWD}/baseq3:/usr/lib/ioquake3/baseq3"
	* The required baseq3 folder mount.
 - "${PWD}/launcher.sh:/usr/lib/ioquake3/launcher.sh"
	* The container will execute launcher.sh, this is a required mount.
 - "${PWD}/.q3a:/home/q3user_svc/.q3a"
	* ioquake3 saves games.log in the user's .q3a folder. We mount a folder to allow access outside of the container. This is useful when running VSP Stats. 


