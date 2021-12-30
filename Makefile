.DEFAULT_GOAL := up

export COMPOSE_PROJECT_NAME=golang-api

docker_sh   = docker exec -w /app -it COMPOSE_PROJECT_NAME
docker_sh_c = $(docker_sh) /bin/bash -c

.PHONY: build
build: down network rebuild up

up:
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down --remove-orphans

.PHONY: rebuild
rebuild:
	docker-compose -f docker-compose.yml build

.PHONY: permissions
permissions:
	@sudo chmod -R 777 mysql

.PHONY: network
network:
	@[ -n "$(shell docker network ls -f name=golang_shared -q)" ] || docker network create golang_shared