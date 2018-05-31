# RabbitMQ ECS
RabbitMQ cluster on ecs of aws

## Quick Start

```shell
$ docker build -t rabbitmq:ecs .
$ docker run -d -e AWS_REGION=cn-north-1 -e AWS_ACCESS_KEY_ID=key-id -e AWS_SECRET_KEY=secret rabbitmq:ecs
```