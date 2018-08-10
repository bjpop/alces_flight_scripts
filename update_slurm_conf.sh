#!/bin/bash -l
systemctl stop clusterware-slurm-slurmd.service
cp /home/alces/code/spank-private-tmp/plugstack.conf /opt/clusterware/opt/slurm/etc/plugstack.conf
cp /home/alces/code/spank-private-tmp/private-tmpdir.so /opt/clusterware/opt/slurm/lib/private-tmpdir.so
cp /opt/clusterware/opt/slurm/etc/slurm.conf /tmp/slurm.conf.bak
cp /home/alces/config/slurm.conf /opt/clusterware/opt/slurm/etc/slurm.conf 
cp /home/alces/config/epilog.sh /opt/clusterware/opt/slurm/bin/epilog.sh
chmod a+x /home/alces/config/epilog.sh /opt/clusterware/opt/slurm/bin/epilog.sh
systemctl start clusterware-slurm-slurmd.service 
