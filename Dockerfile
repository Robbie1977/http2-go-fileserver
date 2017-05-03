FROM surma/simplehttp2server

VOLUME /certs

COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh
