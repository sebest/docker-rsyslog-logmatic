FROM sebest/rsyslog

COPY conf/logmatic.tmpl /etc/rsyslog-docker.d/

COPY start /

ENTRYPOINT /start