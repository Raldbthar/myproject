FROM amd64/ubuntu:trusty

EXPOSE 8080

RUN apt-get update	

RUN apt-get install -y gcc-multilib g++-multilib libboost-dev

WORKDIR mydir/

COPY ./http_server_sample mydir/

ENTRYPOINT ["mydir/http_server_sample/sample/server/build.sh"]

CMD ["server","0.0.0.0:8080"]

