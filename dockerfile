FROM ubuntu
RUN apt-get update
RUN apt-get upgrade -y
RUN apt install default-jdk -y
RUN apt install wget -y
WORKDIR /forge

RUN cd /
RUN mkdir forge
RUN cd forge
RUN wget https://download1614.mediafire.com/l8lzu7r94kog/omfs4pio2c15rvv/1.12.2.json
RUN wget https://download1514.mediafire.com/3t7map684emg/5hs47xujia43mw4/eula.txt
RUN wget https://download1388.mediafire.com/0ba8z2vp8zsg/hpjn7o2fjkljbgg/forge_server.jar
RUN wget https://download2266.mediafire.com/8kxemkxclb5g/5a74nlsqsj95pca/minecraft_server.1.12.2.jar

CMD java -jar -Xmx2048m -Xms1024m forge_server.jar