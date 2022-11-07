FROM registry.access.redhat.com/ubi8/ubi:8.6-990
RUN yum install -y iproute traceroute httpd
RUN systemctl enable httpd
COPY tmpdir/test.txt /home/
COPY tmpdir/yum.conf /home/
ENTRYPOINT tail -f /dev/null
