VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux #linux darwin window
TARGETARCH=arm64

REGISTRY := k40in
APP := kbot
.DEFAULT_GOAL=build

get:
	go get

linux: TARGETOS=linux
linux: build

windows: TARGETOS=windows
windows: build

macos: TARGETOS=darwin TARGETARCH=amd64
macos: build

build: get
	 CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -ldflags "-X="github.com/ksorokin/02-git/cmd.appVersion=${VERSION}

clean:
	docker rmi -f $$(docker images --format='{{.ID}}' | head -1)
	rm -rf 02-git

image:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}  --build-arg TARGETARCH=${TARGETARCH}

push:
	docker push ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}