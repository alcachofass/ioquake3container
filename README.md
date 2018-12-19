An ioquake3 server running in a Docker Container.

*.pk3 files are NOT included here. These come from the Quake 3 Arena CD and Point Release 1.32. These files should exist in /baseq3 and /missionpack directories prior to building the image.

Directory Layout:

.
├── baseq3
│   ├── pak0.pk3
│   ├── pak1.pk3
│   ├── pak2.pk3
│   ├── pak3.pk3
│   ├── pak4.pk3
│   ├── pak5.pk3
│   ├── pak6.pk3
│   ├── pak7.pk3
│   └── pak8.pk3
├── Dockerfile
├── missionpack
│   ├── pak1.pk3
│   ├── pak2.pk3
│   └── pak3.pk3
└── serversetup.cfg

2 directories, 14 files

Docker Actions:

docker build -t myq3a .
docker run -p 27960:27960/udp -it myq3a


