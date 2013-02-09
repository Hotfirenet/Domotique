#!/bin/bash
#
# Start ftpd & httpd daemon
WIZZ_INETD_MORE=/tmp/wizz_inetd_more.conf
echo "21 stream tcp nowait root /usr/bin/ftpd ftpd -w /usr" > $WIZZ_INETD_MORE
echo "80 stream tcp nowait root /usr/bin/httpd httpd -i -c /usr/httpd.conf -h /usr/www" >> $WIZZ_INETD_MORE
/sbin/inetd $WIZZ_INETD_MORE