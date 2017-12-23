FROM ubuntu:16.04

MAINTAINER siguernstore@protonmail.com

RUN apt-get update && apt-get install -y \
	git wget

RUN cd /root && wget https://github.com/MagnaCoinProject/MagnaCoin/releases/download/v1.0.0/mgn-1.0.0-x86_64-linux-gnu.tar.gz && \
	tar xvzf mgn-1.0.0-x86_64-linux-gnu.tar.gz && \
	mv mgn-1.0.0/bin/* . && \
	rm -rf mgn-1.0.0
	

WORKDIR /root

ENTRYPOINT ["./mgnd"]

