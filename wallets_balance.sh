#!/bin/bash

echo -e "chia" 
cd /usr/lib/266/
. ./activate
chia wallet show | grep "Total Balance"

echo -e "sit"
cd /usr/lib/266/silicoin-blockchain/
. ./activate
sit wallet show | grep "Total Balance"

echo -e "hddcoin"
cd /usr/lib/266/hddcoin-blockchain/
. ./activate
hddcoin wallet show | grep "Total Balance"

echo -e "flora"
cd /usr/lib/266/flora-blockchain/
. ./activate
flora wallet show | grep "Total Balance"

echo -e "stai" 
cd /usr/lib/266/stai-blockchain/
. ./activate
stai wallet show | grep "Total Balance"

echo -e "flax" 
cd /usr/lib/266/flax-blockchain/
. ./activate
flax wallet show | grep "Total Balance"

echo -e "maize"
cd /usr/lib/266/maize-blockchain/
. ./activate
maize wallet show | grep "Total Balance"

echo -e "greendoge"
cd /usr/lib/266/greendoge-blockchain/
. ./activate
greendoge wallet show | grep "Total Balance"

echo -e "gold"
cd /usr/lib/266/gold-blockchain/
. ./activate
gold wallet show | grep "Total Balance"

echo -e "profit"
cd /usr/lib/266/profit-blockchain/
. ./activate
profit wallet show | grep "Total Balance"
