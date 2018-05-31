FROM rabbitmq:management-alpine

RUN rabbitmq-plugins enable --offline rabbitmq_peer_discovery_aws

COPY rabbitmq.conf /etc/rabbitmq/
COPY docker-entrypoint.sh /usr/local/bin/

