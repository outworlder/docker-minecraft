FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y python
RUN apt-get install -y python-numpy python-imaging

RUN wget -c http://overviewer.org/builds/254/overviewer-0.10.95-deb64.31-fe42ed4.deb
RUN dpkg -i overviewer-0.10.95-deb64.31-fe42ed4.deb

ENV VERSION 1.6.2

RUN wget --no-check-certificate https://s3.amazonaws.com/Minecraft.Download/versions/${VERSION}/${VERSION}.jar -P ~/.minecraft/versions/${VERSION}/

ENTRYPOINT ["overviewer.py"]
CMD ["/minecraft/world", "/www"]
