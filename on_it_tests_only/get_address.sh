#!/bin/bash

echo -e "chia" 
cd /usr/lib/266/
. ./activate
chia keys show | grep "wallet address"

echo -e "sit"
cd /usr/lib/266/silicoin-blockchain/
. ./activate
sit keys show | grep "wallet address"

echo -e "hddcoin"
cd /usr/lib/266/hddcoin-blockchain/
. ./activate
hddcoin keys show | grep "wallet address"

echo -e "flora"
cd /usr/lib/266/flora-blockchain/
. ./activate
flora keys show | grep "wallet address"

echo -e "stai" 
cd /usr/lib/266/stai-blockchain/
. ./activate
stai keys show | grep "wallet address"

echo -e "flax" 
cd /usr/lib/266/flax-blockchain/
. ./activate
flax keys show | grep "wallet address"

echo -e "maize"
cd /usr/lib/266/maize-blockchain/
. ./activate
maize keys show | grep "wallet address"

echo -e "greendoge"
cd /usr/lib/266/greendoge-blockchain/
. ./activate
greendoge keys show | grep "wallet address"

echo -e "gold"
cd /usr/lib/266/gold-blockchain/
. ./activate
gold keys show | grep "wallet address"

echo -e "profit"
cd /usr/lib/266/profit-blockchain/
. ./activate
profit keys show | grep "wallet address"
