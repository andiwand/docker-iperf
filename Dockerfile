FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y iperf \
    && apt-get autoremove -y \
	&& apt-get clean -y \
	&& rm -rf "/var/lib/apt/lists/*"

ENTRYPOINT [ "iperf" ]

CMD [ "-s" ]

