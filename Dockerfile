
FROM golang:1.18-buster
WORKDIR /app
COPY go.mod go.sum .
RUN go mod download
COPY main.go .
RUN go build -o main
CMD ["./main"]
