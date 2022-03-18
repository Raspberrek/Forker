#!/bin/bash

cd /usr/lib/266/
. ./activate
chia start farmer
#chia show -s
#fetching -e 11

cd /usr/lib/266/silicoin-blockchain/
. ./activate
sit start farmer
#sit show -s
#fetching -e 11

cd /usr/lib/266/hddcoin-blockchain/
. ./activate
hddcoin start farmer
#hddcoin show -s
#fetching -e 11

cd /usr/lib/266/flora-blockchain/
. ./activate
flora start farmer
#flora show -s
#fetching -e 11

cd /usr/lib/266/stai-blockchain/
. ./activate
stai start farmer
#stai show -s

cd /usr/lib/266/flax-blockchain/
. ./activate
flax start farmer
#fetching -e 11

cd /usr/lib/266/maize-blockchain/
. ./activate
maize start farmer

cd /usr/lib/266/greendoge-blockchain/
. ./activate
greendoge start farmer

cd /usr/lib/266/gold-blockchain/
. ./activate
gold start farmer

cd /usr/lib/266/profit-blockchain/
. ./activate
profit start farmer
