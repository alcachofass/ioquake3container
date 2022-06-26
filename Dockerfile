FROM ubuntu:latest

RUN apt-get update && apt-get install -y ioquake3-server

RUN useradd -d /home/q3user_svc -m -s /sbin/nologin q3user_svc

USER q3user_svc

ENTRYPOINT ["/bin/bash", "/usr/lib/ioquake3/launcher.sh"]

