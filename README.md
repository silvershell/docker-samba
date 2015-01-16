# docker-samba

This container provides one public directory (no password, guest ok) and one user only directory.


## Usage

Shell command example is as follows:

```
 docker run \
  -e SMB_USER=smbuser \
  -e SMB_PASSWORD=smbpassword \
  -p 137:137/udp -p 138:138/udp -p 139:139 -p 445:445 \
  -v /var/docker_data/samba/share:/opt/samba/share \
  -v /var/docker_data/samba/user:/opt/samba/user \
  --name sambashare silvershell/samba
```

/var/docker_data/samba/share and /var/docker_data/samba/user is replaced with your host directory for share.
These directories is used as shared directory.

SMB_USER and SMB_PASSWORD is username and password to access to user only directory.

