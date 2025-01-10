up:
	@ docker build -t adminbox:latest .
	@ docker run -it --rm adminbox:latest

release:
	@ docker buildx build --push --builder mybuilder --platform linux/amd64,linux/arm64 -t leakymirror/adminbox .
