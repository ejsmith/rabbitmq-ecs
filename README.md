# RabbitMQ ECS
RabbitMQ cluster on ecs of aws

## Quick Start

```shell
$ docker build -t rabbitmq:ecs .
$ docker run -d -e AWS_REGION=cn-north-1 -e AWS_ACCESS_KEY_ID=key-id -e AWS_SECRET_KEY=secret rabbitmq:ecs
```

### Environments
- `AWS_REGION`
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_KEY`
- `PARTITION_HANDLING` cluster_partition_handling 
  - `pause_if_all_down` stable network, like private dns
  - `pause_minority` for aws ecs AZ distribute
  - `autoheal` unstable network
## Highly Available (Mirrored) Queues

After cluster has started up, make queue contents replication by following:

```shell
rabbitmqctl set_policy ha-three "^three\." '{"ha-mode":"exactly","ha-params":3,"ha-sync-mode":"automatic"}'
```
set prefix 'three' queue or exchange has 3 replication


more detail: [Rabbitmq HA](https://www.rabbitmq.com/ha.html#examples)