# Ubuntu repositories include ioquake3 packages
FROM ubuntu:latest
RUN apt-get update && apt-get install -y ioquake3 ioquake3-server

# *.pk3 files come from retail media and point release 1.32
# Place the the necessary files in /baseq3 and /missionpack directories to be copied into the container's filesystem

# pak0.pk3 comes from the Quake 3 CD
COPY baseq3/pak0.pk3 /usr/lib/ioquake3/baseq3

# pak1.pk3 through pk8.pk3 come from PR 1.32
# You can obtain these from https://ioquake3.org
COPY baseq3/pak1.pk3 /usr/lib/ioquake3/baseq3
COPY baseq3/pak2.pk3 /usr/lib/ioquake3/baseq3
COPY baseq3/pak3.pk3 /usr/lib/ioquake3/baseq3
COPY baseq3/pak4.pk3 /usr/lib/ioquake3/baseq3
COPY baseq3/pak5.pk3 /usr/lib/ioquake3/baseq3
COPY baseq3/pak6.pk3 /usr/lib/ioquake3/baseq3
COPY baseq3/pak7.pk3 /usr/lib/ioquake3/baseq3
COPY baseq3/pak8.pk3 /usr/lib/ioquake3/baseq3

# Missionpack files come from Team Arena. 
# These are also available at https://ioquake3.org
COPY missionpack/pak1.pk3 /usr/lib/ioquake3/missionpack
COPY missionpack/pak2.pk3 /usr/lib/ioquake3/missionpack
COPY missionpack/pak3.pk3 /usr/lib/ioquake3/missionpack

# We copy a basic server configuration 
COPY serversetup.cfg /usr/lib/ioquake3/baseq3
COPY ctfserversetup.cfg /usr/lib/ioquake3/baseq3

RUN adduser --disabled-password q3user_svc

USER q3user_svc

ENTRYPOINT ["/usr/lib/ioquake3/ioq3ded","+exec"]
CMD ["serversetup.cfg"]
