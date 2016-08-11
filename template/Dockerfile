# A Template Dockerfile
#
# Build instruction: run 'builder.sh template' from parent directoy
#
# A typical usage would be:
# docker run -it --rm -v carltonf/template
#
FROM scratch
MAINTAINER Carl Xiong <xiongc05@gmail.com>
# dynamic arguments supposedly passed from '../builder.sh'
ARG GIT_COMMIT=unkown
LABEL 'git-commit'="$GIT_COMMIT"


