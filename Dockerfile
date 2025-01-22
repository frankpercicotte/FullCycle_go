FROM golang:1.23.5

WORKDIR /app

RUN go mod init teste

COPY . .
RUN go build main.go

EXPOSE 8080

ENTRYPOINT ["./main"]