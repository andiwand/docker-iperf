FROM ubuntu:16.04

ENV USER_ID="9005" \
    GROUP_ID="9005"

RUN apt-get update \
    && apt-get install -y sudo iperf \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf "/var/lib/apt/lists/*"

ADD "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "-s" ]
