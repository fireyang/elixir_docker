# Pull base image.
FROM debian:jessie

#change source list to 163.com
RUN mv /etc/apt/sources.list /etc/apt/sources.list.back
ADD conf/debian_jessie_source.list /etc/apt/sources.list

# Install Redis.
RUN echo "Asia/shanghai" > /etc/timezone;
RUN apt-get update --yes --force-yes 
RUN apt-get install vim --yes --force-yes
RUN apt-get install wget --yes --force-yes
RUN apt-get install python --yes --force-yes

VOLUME ["/data"]

ENV PATH "$PATH:/usr/local/bin"

CMD bash
