#!/bin/bash
echo -e "Chia: " | lolcat
cd /usr/lib/266/
. ./activate
chia show -s | grep "Time"
echo -e "      $(chia farm summary | grep "Total size of plots")"

echo -e "Sit: " | lolcat
cd /usr/lib/266/silicoin-blockchain/
. ./activate
sit show -s | grep "Time"
echo -e "      $(sit farm summary | grep "Total size of plots")"

echo -e "Hddcoin: " | lolcat
cd /usr/lib/266/hddcoin-blockchain/
. ./activate
hddcoin show -s | grep "Time"
echo -e "      $(hddcoin farm summary | grep "Total size of plots")"

echo -e "Flora: " | lolcat
cd /usr/lib/266/flora-blockchain/
. ./activate
flora show -s | grep "Time"
echo -e "      $(flora farm summary | grep "Total size of plots")"

echo -e "Stai: " | lolcat
cd /usr/lib/266/stai-blockchain/
. ./activate
stai show -s | grep "Time"
echo -e "      $(stai farm summary | grep "Total size of plots")"

echo -e "Flax: " | lolcat
cd /usr/lib/266/flax-blockchain/
. ./activate
flax show -s | grep "Time"
echo -e "      $(flax farm summary | grep "Total size of plots") \n"
