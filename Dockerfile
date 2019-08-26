FROM golang:1.10-alpine3.7
LABEL org.label-schema.vcs-ref:twogghub/go-droneci
WORKDIR /go/src/go-droneci/main
COPY . .
RUN go get -d ./... && go build -o main .
EXPOSE 8080
ENTRYPOINT ./main
