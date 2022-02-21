#!/bin/bash
#Full database weight more than 55GB actually, then we will take just zip file
#curl or wget? 
wget https://storage.chia-database.com/as114/blockchain_v1_mainnet-21-02-2022.zip
mv blockchain_v1_mainnet-21-02-2022.zip /home/user/.chia/mainnet/db
unzip blockchain_v1_mainnet-21-02-2022.zip
