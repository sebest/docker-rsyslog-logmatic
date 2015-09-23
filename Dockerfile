FROM sebest/rsyslog

COPY conf/logmatic.tmpl /etc/rsyslog.d/

COPY start /

ENTRYPOINT /start