FROM golang:latest
RUN go get "github.com/l50/rest-experiment"
WORKDIR /go/src/github.com/l50/rest-experiment
RUN go build -o main .
CMD ["./main"]
