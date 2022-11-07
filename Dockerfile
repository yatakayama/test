FROM centos:7.5.1804
RUN yum install -y iproute traceroute
ENTRYPOINT tail -f /dev/null
