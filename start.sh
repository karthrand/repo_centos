#!/bin/bash
createrepo -po /var/www/html/yumrepo/base/  /var/www/html/yumrepo/base/
createrepo -po /var/www/html/yumrepo/extras/  /var/www/html/yumrepo/extras/
createrepo -po /var/www/html/yumrepo/updates/  /var/www/html/yumrepo/updates/
createrepo -po /var/www/html/yumrepo/epel/  /var/www/html/yumrepo/epel/
nginx
