IMG=voje/k8s-docker-images/frontend:0.0.1
CNT=frontend

build:
	docker build . -t ${IMG}

run:
	-docker rm -f ${CNT}
	docker run \
		-d \
		--name ${CNT} \
		-p 8080:80 \
		-e POD_ID="We're in docker right now" \
		${IMG}
