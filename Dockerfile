FROM golang:1.23-alpine as builder

WORKDIR /build
COPY . /build

RUN CGO_ENABLED=0 go build -o azure-blob-storage-proxy ./cmd/

FROM alpine:latest
LABEL org.opencontainers.image.source=https://github.com/cirruslabs/azure-blob-storage-proxy/

WORKDIR /svc
COPY --from=builder /build/azure-blob-storage-proxy /svc/
ENTRYPOINT ["/svc/azure-blob-storage-proxy"]
