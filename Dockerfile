FROM alpine:latest

ARG VERSION=v1.0.1
ARG BIN_LINK_AMD64=https://github.com/Mrs4s/go-cqhttp/releases/download/${VERSION}/go-cqhttp_linux_amd64.tar.gz
ARG BIN_LINK_ARM64=https://github.com/Mrs4s/go-cqhttp/releases/download/${VERSION}/go-cqhttp_linux_arm64.tar.gz

ENV TZ Asia/Shanghai
ARG TARGETARCH
ARG BIN_LINK
WORKDIR /app

RUN apk --no-cache add curl tar yasm ffmpeg tzdata &&\
    case ${TARGETARCH} in \
		"amd64")  BIN_LINK=${BIN_LINK_AMD64}  ;; \
		"arm64")  BIN_LINK=${BIN_LINK_ARM64}  ;; \
	esac &&\
    curl -LJo /app/bin.tar.gz ${BIN_LINK} &&\
    tar -zxvf bin.tar.gz &&\
    chmod +x go-cqhttp

WORKDIR /data

ENTRYPOINT exec /app/go-cqhttp faststart
