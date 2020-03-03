FROM amazonlinux:latest

COPY script.sh ./etc/

RUN chmod a+x ./etc/script.sh

WORKDIR ./etc/

MAINTAINER Alexey Semenkov <sealekssaa@gmail.com>

CMD ["./script.sh"]