FROM golang:1.13
WORKDIR /go/src/golang_learning_project
COPY . .
RUN go get -d -v ./... && go install -v ./... && go get github.com/beego/bee/v2
EXPOSE 8881
CMD ["go", "run", "main.go"]