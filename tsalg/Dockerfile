# A Docker image for learning algorithms with TypeScript
# ver: 20160724
#
# Build instruction(example):
# docker build -t carltonf/tsalg:<date> .
# docker tag carltonf/tsalg:<date> carltonf/tsalg:latest
#
# A typical usage would be:
# docker run -it --rm -v $(pwd):/app -v /app/node_modules carltonf/tsalg
FROM node:latest
MAINTAINER Carl Xiong <xiongc05@gmail.com>

RUN npm install -g gulp-cli mocha typescript typings
# typings are not absolutely necessary to bundled in image,
# included for offline use
COPY package.json typings.json /app/

# map source root dir to /app
WORKDIR /app

# local node modules are bundled in image, use a named docker volume to use it.
RUN npm install && typings install


CMD ["/bin/bash"]
