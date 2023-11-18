VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)

build:
	 go build -ldflags "-X="github.com/ksorokin/02-git/cmd.appVersion=${VERSION}

clean:
	rm -rf 02-git