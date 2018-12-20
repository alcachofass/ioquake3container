# ioquake3container

An ioquake3 server running in a Docker Container.

*.pk3 files are NOT included here. These come from the Quake 3 Arena CD and Point Release 1.32. These files should exist in /baseq3 and /missionpack directories prior to building the image.

## Directory Layout:

1. baseq3/
    * pak0.pk3
    * pak1.pk3
    * pak2.pk3
    * pak3.pk3
    * pak4.pk3
    * pak5.pk3
    * pak6.pk3
    * pak7.pk3
    * pak8.pk3
2. Dockerfile
3. docker-compose.yml
4. missionpack/
    * pak1.pk3
    * pak2.pk3
    * pak3.pk3
5. serversetup.cfg
6. ctfserversetup.cfg

(2 directories, 16 files)

## Docker Actions:
### (NOTE: Base container will default to FFA game type [+exec serversetup.cfg])

* docker build -t myq3a .
* docker run -p 27960:27960/udp -it myq3a
*   or in the case of CTF
* docker run -p 27960:27960/udp -it myq3a ctfserversetup.cfg

## Docker Compose
### (NOTE: Compose file will launch a FFA & a CTF container on 27960 & 27961. Modify to suit your needs)
* docker-compose up

## Other Notes
Additional *.cfg files could be copied at build time to be referenced via command line at launch or in-game.

