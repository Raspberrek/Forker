#!/bin/bash
echo -e "Chia: "
cd /usr/lib/266/
. ./activate
chia show -s | grep "Time"

echo -e "Sit: "
cd /usr/lib/266/silicoin-blockchain/
. ./activate
sit show -s | grep "Time"

echo -e "Hddcoin: "
cd /usr/lib/266/hddcoin-blockchain/
. ./activate
hddcoin show -s | grep "Time"

echo -e "Flora: "
cd /usr/lib/266/flora-blockchain/
. ./activate
flora show -s | grep "Time"

echo -e "Stai: "
cd /usr/lib/266/stai-blockchain/
. ./activate
stai show -s | grep "Time"

echo -e "Flax: "
cd /usr/lib/266/flax-blockchain/
. ./activate
flax show -s | grep "Time"

