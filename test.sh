#!/bin/sh

cd /app \
 && carmel install \
 && carmel exec perl test.pl
