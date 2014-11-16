#!/bin/bash

varRoot=$(pwd)

if ! [ -z $2 ]; then
    varHost="$2"
else
    varHost="127.0.0.1"
fi

if ! [ -z $3 ]; then
    varPort="$3"
else
    varPort="80"
fi

cat install/nginx/satis.local.int | sed "s@__ROOT__@$varRoot@;s@__HOST__@$varHost@;s@__PORT__@$varPort@" > $1/sites-available/satis.local.int

rm -f $1/sites-enabled/satis.local.int
ln -s $1/sites-available/satis.local.int $1/sites-enabled/satis.local.int
