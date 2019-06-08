FROM ubuntu:18.04

RUN  apt-get update \
  && apt-get install -y wget gnupg2 \
  && rm -rf /var/lib/apt/lists/*

RUN echo 'deb http://download.opensuse.org/repositories/home:/strik/Debian_9.0/ /' > /etc/apt/sources.list.d/home:strik.list \
    && wget -nv https://download.opensuse.org/repositories/home:strik/Debian_8.0/Release.key -O Release.key \
	&& apt-key add - < Release.key \
	&& apt-get update \
	&& apt-get -y install cc65 \
	&& rm -rf /var/lib/apt/lists/*

