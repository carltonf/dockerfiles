FROM mongo:latest
MAINTAINER Carl Xiong <xiongc05@gmail.com>

RUN apt-get update \
 && apt-get install -y git build-essential \
 && git clone --depth=1 https://github.com/TylerBrock/mongo-hacker.git \
 && rm -rf ~/.mongorc.js \
 && cd mongo-hacker \
 && make install

# a script to ease connecting to default 'mongodb'
COPY mongo-hacker-shell /usr/local/bin/
RUN chmod a+x /usr/local/bin/mongo-hacker-shell

# remove unneeded packages
RUN apt-get remove -y build-essential git && apt-get clean

# this image is used as client shell mainly
CMD ["mongo-hacker-shell"]
