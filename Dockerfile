FROM golang:1.10-alpine3.7
LABEL twogghub/go-droneci
WORKDIR /go/src/go-droneci/main
COPY . .
RUN go get -d ./... && go build -o main .
EXPOSE 8080
ENTRYPOINT ./main
