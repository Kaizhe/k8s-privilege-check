.PHONY: all
  
all: build push
IMG="kaizheh/alpine-echo"

build:
	@echo "+ $@"
	docker build -f Dockerfile -t ${IMG} .
push:
	@echo "+ $@"
	docker push ${IMG}
