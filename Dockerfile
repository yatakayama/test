FROM centos:7.5.1804
RUN yum install -y iproute traceroute
COPY tmpdir/test.txt /home/
ENTRYPOINT tail -f /dev/null
