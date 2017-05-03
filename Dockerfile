FROM surma/simplehttp2server

VOLUME /certs

COPY startup.sh /startup.sh

RUN chmod +x /startup.sh

CMD /startup.sh
