up:
	@ docker run -it --rm adminbox:latest /bin/bash

build:
	@ docker build -t adminbox:latest .

release:
	@ docker build -t adminbox:latest .
	@ docker tag adminbox:latest leakymirror/adminbox
	@ docker push leakymirror/adminbox:latest
	@ docker image remove leakymirror/adminbox:latest adminbox:latest

release:
	@ docker buildx build --push --builder mybuilder --platform linux/amd64,linux/arm64 -t leakymirror/adminbox .
