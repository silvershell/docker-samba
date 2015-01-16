# Shell Example:
# docker run -p 137:137/udp -p 138:138/udp -p 139:139 -p 445:445 -v /var/host_docker_data/samba:/opt/samba/share silvershell/samba

FROM silvershell/ubuntu

MAINTAINER silvershell

RUN apt-get install -y samba
RUN mkdir -p /opt/samba/share
RUN chmod 777 /opt/samba/share

# ----------------

EXPOSE 137/udp 138/udp 139 445

COPY smb.conf /etc/samba/smb.conf

VOLUME /opt/samba/share

CMD /usr/sbin/smbd --daemon --foreground --log-stdout