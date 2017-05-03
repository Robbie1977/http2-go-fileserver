FROM surma/simplehttp2server

VOLUME /certs

RUN sed -i 's/*listen/"data.virtualflybrain.org:5000"/' /go/src/app/httpsdetect.go

RUN sed -i 's|"cert.pem"|"/certs/fullchain.pem"|' /go/src/app/tls.go

RUN sed -i 's|"key.pem"|"/certs/privkey.pem"|' /go/src/app/tls.go

RUN cd /go/src/app && go build -a


