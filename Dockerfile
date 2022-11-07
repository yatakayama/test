FROM centos:7.5.1804
RUN yum install -y iproute traceroute
RUN pwd
RUN ls -l
ENV HOSTNAME TESTHOST
COPY tmpdir/test.txt /home/
COPY tmpdir/yum.conf /home/
ENTRYPOINT tail -f /dev/null
