FROM mongo:latest
MAINTAINER Carl Xiong <xiongc05@gmail.com>

# git, build-essential are build requirements should be removed afterwards
# vim and etc. are for easier shell editting
RUN apt-get update \
  && apt-get install -y git build-essential \
  && apt-get install -y vim \
  && git clone --depth=1 https://github.com/TylerBrock/mongo-hacker.git \
  && rm -rf ~/.mongorc.js \
  && cd mongo-hacker \
  && make install

# a script to ease connecting to default 'mongodb'
COPY mongo-hacker-shell /usr/local/bin/
# a global vimrc.loca that *only* enabled recommended options in vimrc
#
# NOTE: there is also some minor annoyance with hacker-shell and vim, the rule
# of thumb is serious hacking is better done with scripts.
COPY vimrc.local /etc/vim/
RUN chmod a+x /usr/local/bin/mongo-hacker-shell

ENV EDITOR 'vi'

# remove unneeded packages: use autoremove to further clean all unneeded
# packages
RUN apt-get remove -y build-essential git \
  && apt-get autoremove \
  && apt-get clean

# this image is used as client shell mainly
CMD ["mongo-hacker-shell"]
