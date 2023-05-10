# Node Terraform Docker

- required `node`, `terraform` and `docker`

### Running all local

- Let's use the make command to run our commands

## Steps:

1 - run `make install`

#### output:

<img src="imgs/make-install.png"/>

2 - run `make init`

#### output:

<img src="imgs/make-init.png"/>

3 - run `make apply`

#### output:

<img src="imgs/make-apply.png"/>

4 - run `docker ps`

#### output:

<img src="imgs/docker-ps.png"/>

5 - access `http://localhost:3000`

#### output:

<img src="imgs/hello-node-terraform.png"/>

## Node, Terraform and Docker ready to use

Example of `Makefile`

```make
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
```
