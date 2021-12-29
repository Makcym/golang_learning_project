FROM golang:1.13
WORKDIR /go/src/golang_learning_project
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 8881

CMD ["go", "run", "main.go"]