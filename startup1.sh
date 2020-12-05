#!/bin/bash
echo $RANDOM >> /var/www/html/index.html
echo " hostname= " >> /var/www/html/index.html
hostname >> /var/www/html/index.html
/usr/sbin/httpd -D FOREGROUND
~                                               
