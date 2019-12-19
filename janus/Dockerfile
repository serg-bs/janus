# TODO Не нужно включать в результирующий контейнер исходники libnice и anus-gateway
FROM	fedora:latest AS base

RUN	    yum upgrade -y && \
	    yum install -y git gtk-doc make && \
        yum install -y libmicrohttpd-devel jansson-devel \
	    openssl-devel libsrtp-devel sofia-sip-devel glib2-devel \
	    opus-devel libogg-devel libcurl-devel pkgconfig gengetopt \
	    libconfig-devel libtool autoconf automake

RUN	    git clone https://gitlab.freedesktop.org/libnice/libnice && \
	    cd libnice && \
	    ./autogen.sh && \
	    ./configure --prefix=/usr --disable-dependency-tracking && \
	    make && \
	    make install &&\
	    cd .. && \
	    rm -rf libnice

RUN	    git clone https://github.com/meetecho/janus-gateway.git && \
	    cd janus-gateway && \
	    sh autogen.sh && \
	    ./configure --prefix=/opt/janus --disable-websockets --disable-data-channels --disable-rabbitmq --disable-mqtt && \
	    make && \
	    make install && \
	    make configs && \
	    cd .. && \
	    rm -rf janus-gateway

COPY    . ./
COPY    janus.transport.http.jcfg /opt/janus/etc/janus/

EXPOSE 8088 8089
ENTRYPOINT ["/entrypoint.sh"]
CMD ["shb"]
