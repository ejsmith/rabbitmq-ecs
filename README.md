# RabbitMQ ECS
RabbitMQ cluster on ecs of aws

## Quick Start

```shell
$ docker build -t rabbitmq:ecs .
$ docker run -d -e AWS_REGION=cn-north-1 -e AWS_ACCESS_KEY_ID=key-id -e AWS_SECRET_KEY=secret rabbitmq:ecs
```

## Highly Available (Mirrored) Queues

After cluster has started up, make queue contents replication by following:

```shell
rabbitmqctl set_policy ha-two "^three\." '{"ha-mode":"exactly","ha-params":3,"ha-sync-mode":"automatic"}'
```
set prefix 'three' queue or exchange has 3 replication


more detail: [Rabbitmq HA](https://www.rabbitmq.com/ha.html#examples)