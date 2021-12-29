# Golang API
Golang api service based on beego framework. 

Learn more: 
* Git: https://github.com/beego/bee 
* Documentation: https://beego.vip

## How to get started with Docker
* For first run `make build`
* Run `make` or `docker-compose up -d`
* Open http://localhost:8881/v1/user

## How to get started without Docker
* Install Go: https://go.dev/doc/install
* Install bee : `go get github.com/beego/bee/v2`
* Run api `bee run main.go`
* Open http://localhost:8881/v1/user

## How to deploy
* Go to https://okteto.com
* Register and connect your GitHub account
* Deploy form beego-api branch
* As a result you'll get a link like this https://golang-api-makcym.cloud.okteto.net/v1/user

## The architecture / execution logic of Beego
Beego is a RESTful HTTP framework for the rapid development of Go applications including APIs, web apps and backend
services with integrated Go specific features such as interfaces and struct embedding. Beego is built upon 8 loosely
linked modules that can be used independently or as part of Beego’s HTTP logic. This high level of modularity gives
Beego an unprecedented level of flexibility to meet developer needs.

![](https://beego.vip/docs/images/architecture.png)

Beego uses a standard Model-View-Controller (MVC) architecture for logic execution.
![](https://beego.vip/docs/images/flow.png)