FROM golang:1.16-alpine as builder

WORKDIR /app

COPY go.mod .
# COPY go.sum .

# RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# FROM builder as tester

# RUN go test -v ./...

FROM alpine:latest

WORKDIR /root/

COPY --from=builder /app/main .

CMD ["./main"]