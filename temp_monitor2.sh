#!/bin/bash
echo -e "\e[1;36mTemperatures of disks:\e[0m \n "
t_sda=$(hddtemp -n /dev/sda)
t_sdb=$(hddtemp -n /dev/sdb)
t_sdc=$(hddtemp -n /dev/sdc)
t_sdd=$(hddtemp -n /dev/sdd)
t_sde=$(hddtemp -n /dev/sde)
t_sdf=$(hddtemp -n /dev/sdf)
t_sdg=$(hddtemp -n /dev/sdg)
t_sdh=$(hddtemp -n /dev/sdh)

echo -e "/dev/sda: \e[1;32m$t_sda\e[0m*C "
echo -e "/dev/sdb: \e[1;32m$t_sdb\e[0m "
echo -e "/dev/sdc: \e[1;32m$t_sdc\e[0m "
echo -e "/dev/sdd: \e[1;32m$t_sdd\e[0m*C "
echo -e "/dev/sde: \e[1;32m$t_sde\e[0m*C "
echo -e "/dev/sdf: \e[1;32m$t_sdf\e[0m*C "
echo -e "/dev/sdg: \e[1;32m$t_sdg\e[0m*C "
echo -e "/dev/sdh: \e[1;32m$t_sdh\e[0m*C "
