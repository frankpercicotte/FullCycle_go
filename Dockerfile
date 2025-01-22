FROM golang:1.19

WORKDIR /app

RUN go mod init teste

COPY . .
RUN go build main.go

EXPOSE 8080

ENTRYPOINT ["./main"]