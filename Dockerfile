FROM logstash:2.1.1-1

LABEL Roberto Cardenas

ADD ./config/logstash.yml /etc/logstash/conf.d/logstash.yml

RUN logstash -f /etc/logstash/conf.d/logstash.yml -t
CMD logstash -f /etc/logstash/conf.d/logstash.yml