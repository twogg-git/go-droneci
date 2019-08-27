FROM golang as builder
WORKDIR /go/src/github.com/twogg-git/go-droneci
RUN CGO_ENABLED=0 GOOS=linux go build -o demo main.go

FROM scratch as production
COPY --from=builder /go/src/github.com/twogg-git/go-droneci/demo .
CMD ["./demo"]

FROM alpine as debug
COPY --from=builder /go/src/github.com/twogg-git/go-droneci/demo .
CMD ["./demo"]
