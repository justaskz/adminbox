release:
	@ docker build -t adminbox:latest .
	@ docker tag adminbox:latest leakymirror/adminbox
	@ docker push leakymirror/adminbox:latest
	@ docker image remove leakymirror/adminbox:latest adminbox:latest
