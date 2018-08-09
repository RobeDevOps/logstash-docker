FROM logstash:2.1.1-1

LABEL Roberto Cardenas

ADD ./config/logstash.yml /etc/logstash/conf.d/logstash.yml

CMD logstash -f /etc/logstash/conf.d/logstash.yml