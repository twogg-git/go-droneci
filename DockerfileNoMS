# NON Multi-stage Version - Final image size aprox 88MB

FROM golang:1.10-alpine3.7
WORKDIR /go/src/go-droneci/main
COPY . .
RUN go get -d ./... && go build -o main .
EXPOSE 8080
ENTRYPOINT ./main
