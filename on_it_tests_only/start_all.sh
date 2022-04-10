#!/bin/bash

cd /opt/
. ./activate
chia start farmer
#chia show -s
#fetching -e 11

cd /opt/silicoin-blockchain/
. ./activate
sit start farmer
#sit show -s
#fetching -e 11

cd /opt/hddcoin-blockchain/
. ./activate
hddcoin start farmer
#hddcoin show -s
#fetching -e 11

cd /opt/flora-blockchain/
. ./activate
flora start farmer
#flora show -s
#fetching -e 11

cd /opt/stai-blockchain/
. ./activate
stai start farmer
#stai show -s

cd /opt/flax-blockchain/
. ./activate
flax start farmer
#fetching -e 11

cd /opt/maize-blockchain/
. ./activate
maize start farmer

cd /opt/greendoge-blockchain/
. ./activate
greendoge start farmer

cd /opt/gold-blockchain/
. ./activate
gold start farmer

cd /opt/profit-blockchain/
. ./activate
profit start farmer
