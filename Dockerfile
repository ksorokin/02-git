FROM quay.io/projectquay/golang:1.20 as builder

ARG TARGETOS=linux
ARG TAGETARCH=arm64

WORKDIR /go/src/app
COPY . .
RUN make TARGETOS=${TARGETOS} TAGETARCH=${TAGETARCH} build

FROM scratch
COPY --from=builder /go/src/app/02-git .
COPY --from=alpine:latest /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs

ENTRYPOINT ["./02-git", "start"]