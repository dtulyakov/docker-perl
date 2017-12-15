[![Build Status](https://travis-ci.org/dtulyakov/docker-perl.svg?branch=master)](https://travis-ci.org/dtulyakov/docker-perl)

```BASH
docker build --force-rm --no-cache --tag=dtulyakov/perl:latest . \
  && docker run --rm \
     --name=perl \
     --volumes-from $(pwd):/ pp\
     dtulyakov/perl:latest \
     sh -c "/app/test.sh"

```
