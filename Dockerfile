FROM surma/simplehttp2server

VOLUME /certs

COPY start.sh /start.sh

RUN chmod +x /start.sh

RUN sed -i 's/*listen/"data.virtualflybrain.org:5000"/' /go/src/app/httpsdetect.go

RUN sed -i 's|"cert.pem"|"/certs/fullchain.pem"|' /go/src/app/tls.go

RUN sed -i 's|"key.pem"|"/certs/privkey.pem"|' /go/src/app/tls.go

CMD /start.sh
