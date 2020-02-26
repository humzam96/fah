FROM centos:latest

RUN rpm -i --nodeps https://download.foldingathome.org/releases/public/release/fahclient/centos-5.3-64bit/v7.4/fahclient-7.4.4-1.x86_64.rpm && \
    rpm -i --nodeps https://download.foldingathome.org/releases/public/release/fahviewer/centos-5.3-64bit/v7.4/fahviewer-7.4.4-1.x86_64.rpm && \
    /etc/init.d/FAHClient stop

COPY config.xml /etc/fahclient/config.xml

EXPOSE 7396

ENTRYPOINT FAHClient --config /etc/fahclient/config.xml
