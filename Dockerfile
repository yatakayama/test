FROM registry.redhat.io/rhel8/httpd-24
RUN yum install -y iproute httpd
RUN systemctl enable httpd
ENTRYPOINT tail -f /dev/null
