#!/bin/bash


# This script is intended to be used by ansible to deploy ood apps to
# a portal server

rsync -a --exclude='.git/' /root/ood_apps/desktop/ /etc/ood/config/apps/bc_desktop/
rsync -a --exclude='.git/' /root/ood_apps/jupyter/ /var/www/ood/apps/sys/jupyter/
rsync -a --exclude='.git/' /root/ood_apps/jupyter_gpu/ /var/www/ood/apps/sys/jupyter_gpu/
rsync -a --exclude='.git/' /root/ood_apps/jupyter_singularity/ /var/www/ood/apps/sys/jupyter_singularity/
rsync -a --exclude='.git/' /root/ood_apps/jupyter_singularity_gpu/ /var/www/ood/apps/sys/jupyter_singularity_gpu/
rsync -a --exclude='.git/' /root/ood_apps/rstudio/ /var/www/ood/apps/sys/rstudio/
rsync -a --exclude='.git/' /root/ood_apps/rstudio_gpu/ /var/www/ood/apps/sys/rstudio_gpu/
