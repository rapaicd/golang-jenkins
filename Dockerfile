FROM golang:latest as builder

WORKDIR /app

COPY go.mod .
# COPY go.sum .

# RUN go mod download

COPY . .

RUN go build -o main

FROM builder as tester

RUN go test -v ./...

FROM alpine:latest

WORKDIR /root/

COPY --from=builder /app/main .

CMD ["./main"]