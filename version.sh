#!/bin/bash

IMAGE_NAME=icx
ICX_VERSION_=$(docker run -t --rm ${IMAGE_NAME} icx --version | grep "oneAPI DPC")
ICX_VERSION=$(echo ${ICX_VERSION_} | cut -d " " -f5)
ICX_VERSION_DETAIL=$(echo ${ICX_VERSION_} | cut -d " " -f6 | grep -E -o '[0-9.]+')

echo ${ICX_VERSION}
echo ${ICX_VERSION_DETAIL}
