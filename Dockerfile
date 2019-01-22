FROM centos:latest
RUN yum install -y postfix cyrus-sasl-plain cyrus-sasl-md5
VOLUME ["/data", "/var/log"]
ADD runconfig.sh /root/runconfig.sh
RUN chmod +x /root/runconfig.sh
EXPOSE 25

CMD ["/root/runconfig.sh"]