# docker-samba

This container provides one share directory on public.

## Usage

Shell command example is as follows:

```
docker run -p 137:137/udp -p 138:138/udp -p 139:139 -p 445:445 -v /var/host_docker_data/samba:/opt/samba/share silvershell/samba
```

/var/host_docker_data/samba is replaced with your host directory for share.
