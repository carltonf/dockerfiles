# A Docker image for building personal site
# ver: 20160808
#
# The Goal of this image is have everything already set up for my site and thus
# no need for the startup script in the official image. So far, we do not need
# extra gems.
#
FROM jekyll/jekyll:latest
MAINTAINER Carl Xiong <xiongc05@gmail.com>

# NOTE there is a newer json gem installed which creates some warnings
RUN rm -rf /usr/lib/ruby/2.3.0/json.rb \
           /usr/lib/ruby/2.3.0/json/

# NOTE no startup and run bash by default. There will be an error if no command
# supplied.
ENV SKIP_STARTUP=1
CMD /bin/bash
