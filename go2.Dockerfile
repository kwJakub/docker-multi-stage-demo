FROM golang:alpine as go
WORKDIR /app
COPY hello.go /app/hello.go
RUN go build -o hello
CMD ./hello

FROM alpine
WORKDIR /app
COPY --from=go /app/hello /app/hello
CMD ./hello
