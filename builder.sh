#!/bin/bash

NAMESPACE='carltonf'
DATE_VERSION=$(date +%Y%m%d)

img_name=$1
if [ -z "$img_name" -a -d "$img_name" ];then
    error "* Error: need a valid image name (subdir). Abort."
    exit 1
fi

# NOTE set in label when build
GIT_META=$(git log -s --format=%H -1 -- "$img_name")

# NOTE: building in the subdir
cd $img_name
# NOTE sanitize image name for tags
img_name=$(basename $img_name)

# NOTE assemble tags
base_tag="$NAMESPACE/$img_name"
versioned_tag="${base_tag}:$DATE_VERSION"
# NOTE for local convenience, mainly
latest_tag="${base_tag}:latest"

print-build-info () {
    echo "********************************"
    echo "* Build Info: "
    echo "** Image: $base_tag"
    echo "** Tag: $versioned_tag"
    echo "** ARG: GIT_COMMIT=$GIT_META"
    echo "********************************"
};

print-build-info

docker build --build-arg "GIT_COMMIT=$GIT_META" \
       --tag="$versioned_tag" \
       .

if [ $? -eq 0 ]; then
    echo "* INFO: successfully built. tag it to latest."
    docker tag "$versioned_tag" "$latest_tag"
else
    echo "* WARNING: Oops, something goes wrong. No latest tag set."
fi
