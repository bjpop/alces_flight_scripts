#!/bin/bash -l

#systemctl stop clusterware-slurm-slurmd.service
sudo cp /home/alces/code/alces_flight_spank_private_tmp/plugstack.conf /opt/clusterware/opt/slurm/etc/plugstack.conf
sudo cp /home/alces/code/alces_flight_spank_private_tmp/private-tmpdir.so /opt/clusterware/opt/slurm/lib/private-tmpdir.so
sudo cp /opt/clusterware/opt/slurm/etc/slurm.conf /tmp/slurm.conf.bak
sudo cp /home/alces/config/alces_flight_slurm_config/slurm.conf /opt/clusterware/opt/slurm/etc/slurm.conf 
sudo cp /home/alces/config/alces_flight_slurm_config/epilog.sh /opt/clusterware/opt/slurm/bin/epilog.sh
sudo chmod a+x /opt/clusterware/opt/slurm/bin/epilog.sh
#systemctl start clusterware-slurm-slurmd.service 
