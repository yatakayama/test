FROM registry.access.redhat.com/ubi8/ubi:8.6-990
RUN yum install -y iproute httpd
RUN systemctl enable httpd
ENTRYPOINT tail -f /dev/null
