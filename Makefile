#!make
MAKEFLAGS += --silent

install:
	yarn install

build:
	docker build -t node-terraform-docker .

init:
	terraform init

apply:
	terraform apply

destroy:
	terraform destroy