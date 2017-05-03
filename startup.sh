#!/bin/bash

sed -i 's/*listen/"data.virtualflybrain.org:5000"/' /go/src/app/httpsdetect.go
sed -i 's|"cert.pem"|"/certs/fullchain.pem"|' /go/src/app/tls.go
sed -i 's|"key.pem"|"/certs/privkey.pem"|' /go/src/app/tls.go

cd /go/src/app
go build -a

apps
