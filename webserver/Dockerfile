FROM ubuntu

RUN apt-get -y install python

USER daemon
EXPOSE 8000

VOLUME /www
WORKDIR /www

CMD ["python", "-m", "SimpleHTTPServer"]
