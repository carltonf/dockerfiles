# A Docker image for learning algorithms with TypeScript
# ver: 20160809
#
# Build instruction(example): run 'builder.sh vorpal-toolbox' from parent directoy
#
# A typical usage would be:
# docker run -it --rm -v $(pwd):/app -v /app/node_modules carltonf/vorpal-toolbox
#
FROM node:latest
MAINTAINER Carl Xiong <xiongc05@gmail.com>

# Possibly still needed.
# RUN npm install -g gulp-cli mocha typescript typings
COPY package.json /app/

# map source root dir to /app
WORKDIR /app

# local node modules are bundled in image, use a named docker volume to use it.
RUN npm install


CMD ["/bin/bash"]
