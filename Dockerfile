FROM centos:7.5.1804
RUN yum install -y iproute traceroute httpd
RUN systemctl enable httpd
COPY tmpdir/test.txt /home/
COPY tmpdir/yum.conf /home/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
