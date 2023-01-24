FROM nginx:1.23.0
# LABEL version="1.0" \
#    MAINTAINER="beachabi@super.me"


COPY [ "nginx.conf", "test", "docker-entrypoint.sh", "./"]

RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get install -y spawn-fcgi \
    && apt-get install -y libfcgi-dev \
    && apt-get install -y curl \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    && cp nginx.conf etc/nginx/ \
    && useradd newuser \
    && usermod -aG adm newuser \
    && chown root:shadow /etc/shadow \
  #  && chmod 777 /etc/shadow \
    && chmod a-s usr/bin/expiry \
    && chmod u-s bin/su \
    && chmod u-s usr/bin/chsh \
    && chmod u-s bin/mount \
    && chmod a-s usr/bin/wall \
    && chmod u-s usr/bin/passwd \
    && chmod a-s usr/bin/chage \
    && chmod a-s sbin/unix_chkpwd \
    && chmod u-s usr/bin/newgrp \
    && chmod u-s usr/bin/chfn \
    && chmod u-s usr/bin/gpasswd \
    && chmod u-s bin/umount \
    #&& chown newuser -R /etc/nginx \
    && chmod 777 -R /etc/nginx \
    && chmod 777 /etc/nginx/nginx.conf

    # && chmod o-rx /var/cache/nginx/client_temp
#	* setgid file: g-w-r-xr-x usr/bin/wall
#	* setgid file: g-w-r-xr-x sbin/unix_chkpwd
#	* setgid file: g-w-r-xr-x usr/bin/expiry
#	* setgid file: g-w-r-xr-x usr/bin/chage


HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1 



#WORKDIR /home/newuser


#
EXPOSE 80


#CMD ["nginx", "-g", "daemon off;"]
CMD ["sh", "./docker-entrypoint.sh"]

#USER newuser

