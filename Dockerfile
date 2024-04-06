FROM registry.access.redhat.com/ubi8:8.9-1160

LABEL maintainer="João Paulo Maida <jpmaida@users.noreply.github.com>"

RUN dnf -y update-minimal --security --sec-severity=Important --sec-severity=Critical \ 
        && dnf clean all \
        && useradd -m -r -u 666 jq \
        && dnf install -y jq \
        && chown -R jq:jq /usr/share/doc/jq/ \
        && chown jq:jq /usr/bin/jq
 
USER jq

WORKDIR /home/jq

CMD [ "jq --version && echo "{\"hello\":\"world\"}" | jq '.'" ]