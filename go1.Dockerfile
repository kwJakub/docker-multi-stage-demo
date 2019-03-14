FROM golang:alpine
WORKDIR /app
COPY hello.go /app/hello.go
RUN go build -o hello
CMD ./hello