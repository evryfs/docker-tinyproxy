FROM quay.io/evryfs/base-ubuntu:jammy-20221003
LABEL maintainer fsdevops@evry.com
# hadolint ignore=DL3008
RUN apt-get update && \
  apt-get -y --no-install-recommends install tinyproxy && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
