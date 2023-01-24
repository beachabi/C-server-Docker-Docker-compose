#!/bin/sh
# vim:sw=4:ts=4:et
  

#chmod u-g usr/bin/expiry
#chmod u-s bin/su
#chmod u-s usr/bin/chsh
#chmod u-s bin/mount
#chmod u-g usr/bin/wall
#chmod u-s usr/bin/passwd
#chmod u-g usr/bin/chage
#chmod u-g sbin/unix_chkpwd
#chmod u-s usr/bin/newgrp
#chmod u-s usr/bin/chfn
#chmod u-s usr/bin/gpasswd
#chmod u-s bin/umount




spawn-fcgi -a 127.0.0.1 -p 8080 -f ./test
nginx -g "daemon off;"

