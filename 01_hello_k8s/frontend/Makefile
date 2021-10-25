IMG=voje/frontend:0.1.0
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

push: build
	docker push ${IMG}
