FROM centos:7.8.2003
LABEL author="欧德之怒"
RUN yum -y update
RUN rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum install -y yum-utils createrepo wget make cmake gcc gcc-c++ pcre-devel zlib-devel openssl openssl-devel net-tools vim nginx 
WORKDIR /home
ADD nginx.conf /etc/nginx/nginx.conf
ADD start.sh /home/start.sh
RUN chmod 755 /home/start.sh
EXPOSE 9090
ENTRYPOINT nginx;sleep infinity