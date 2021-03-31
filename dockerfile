FROM ubuntu
RUN apt-get update
RUN apt-get upgrade -y
RUN apt install openjdk-8-jre -y
RUN apt install wget -y
RUN apt install unzip -y
RUN apt install zip -y
WORKDIR /forge

RUN cd /
RUN mkdir forge
RUN cd forge
RUN wget https://github.com/FloridaMan7588/docker-forge-server/raw/main/server-files.zip
RUN unzip server-files.zip
RUN rm server-files.zip

CMD java -jar -Xmx2048m -Xms1024m forge-1.12.2-14.23.5.2854.jar
