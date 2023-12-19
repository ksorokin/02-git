VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux
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

test:
	go test -v

build: get
	 CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -ldflags "-X="github.com/ksorokin/02-git/cmd.appVersion=${VERSION}

clean:
	docker rmi -f ${REGISTRY}/${APP}:${VERSION}-${TARGETOS}-${TARGETARCH}
	rm -rf 02-git

image:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-${TARGETOS}-${TARGETARCH} --build-arg TARGETARCH=${TARGETARCH}

push:
	docker push ${REGISTRY}/${APP}:${VERSION}-${TARGETOS}-${TARGETARCH}