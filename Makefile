up:
	@ docker run -it --rm adminbox:latest /bin/bash

build:
	@ docker build -t adminbox:latest .

release:
	@ docker buildx build --push --builder mybuilder --platform linux/amd64,linux/arm64 -t leakymirror/adminbox .
