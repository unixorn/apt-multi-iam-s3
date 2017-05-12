FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y \
    build-essential \
    cdbs \
    libapt-pkg-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    fakeroot \
    devscripts \
    debhelper

ADD ./ /code/

ENTRYPOINT ["/code/build"]
CMD ["hello"]
