FROM centos:latest

RUN rpm -i --nodeps https://download.foldingathome.org/releases/public/release/fahclient/centos-6.7-64bit/v7.6/fahclient-7.6.21-1.x86_64.rpm && \
    rpm -i --nodeps https://download.foldingathome.org/releases/public/release/fahviewer/centos-6.7-64bit/v7.6/fahviewer-7.6.21-1.x86_64.rpm && \
    mkdir /fah && mkdir -p /etc/fahclient && touch /etc/fahclient/config.xml
#    /etc/init.d/FAHClient stop

#COPY config.xml /etc/fahclient/config.xml

EXPOSE 7396 36330

ENTRYPOINT FAHClient --chdir /fah
