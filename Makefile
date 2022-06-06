build:
	GOOS=linux go build -o ./main ./main.go
	docker build -t digitalcircle/devcontainer .
run:
	- docker rm -f devcontainer
	docker run -d -v devcontainer_root:/root -v /var/run/docker.sock:/var/run/docker.sock --name devcontainer digitalcircle/devcontainer