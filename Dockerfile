FROM surma/simplehttp2server

VOLUME /certs

COPY start.sh /start.sh

RUN chmod +x /start.sh

RUN sed -i 's/*listen/"data.virtualflybrain.org:5000"/' /httpsdetect.go

CMD /start.sh
