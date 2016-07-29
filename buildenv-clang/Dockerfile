# A Docker image for practicing "modern" C/C++ with Clang
#
# A typical usage would be:
# docker run -it --rm -v $(pwd):/app -v /app/node_modules carltonf/tsalg

# No official images available for a base, the following has proved to be quite
# complete. For the time being, let's build upon it.
FROM walberla/buildenv-ubuntu-clang:3.8
MAINTAINER Carl Xiong <xiongc05@gmail.com>

COPY clang-checker /usr/local/bin/
RUN chmod a+x /usr/local/bin/clang-checker

# map source root dir to /home
WORKDIR /home

CMD ["/bin/bash"]
