# ACCRE VizPortal Batch Connect Desktop App

Revision control for the desktop app used in the accre
viz portal.

To deploy, rsync this (excluding .git) to
`/etc/ood/config/apps/bc_desktop`, current command:

```
rsync -a  --exclude='.git/' /root/git/bc_accre_desktop/ /etc/ood/config/apps/bc_desktop/
```
