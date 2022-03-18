
# Usefull automation program for chia and forks

## Functionality:
-check all forks status like:
  - start/restart all forks
  - check databases (node time sync, if its up-to-date) for XCH and forks on HiveOS
  - check address for receive coins
  - check farm status, like plots size
  - check node status
  - add seed for all forks
  - database back-up (in plans q2 2022)
  - install more forks, delete
  - check wallets (coins summary, xch, forks) 
 
-disk management:
  - mount disks for plots path
  - check temperatures
  - S.M.A.R.T. check, tests
  - real-time temp-monitor with trigger and unmount if required

## Instalation
On HiveOS / Ubuntu / Debian systems
```bash
cd /opt/
git clone https://github.com/Raspberrek/hiveOS_chia_automation.git
cd hiveOS_chia_automation/
./Forker.sh
```
