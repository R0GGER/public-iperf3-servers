# https://hub.docker.com/r/r0gger/iperf3
# docker pull r0gger/iperf3

FROM alpine
MAINTAINER R0GGER
RUN apk add --update --no-cache iperf3
EXPOSE 5201/tcp 5201/udp
ENTRYPOINT ["/usr/bin/iperf3"]
CMD ["-s"]
