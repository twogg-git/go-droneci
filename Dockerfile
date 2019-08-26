FROM golang as builder
WORKSPACE /go/src/github.com/go-droneci
RUN CGO_ENABLED=0 GOOS=linux go build -o app main.go

FROM scratch as production
COPY --from=builder /go/src/github.com/go-droneci/app .
CMD ["./app"]

FROM alpine as debug
COPY --from=builder /go/src/github.com/go-droneci/app .
CMD ["./app"]

