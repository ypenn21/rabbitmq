#!/bin/bash
kubectl run perf-test --image=pivotalrabbitmq/perf-test -- --uri amqp://administrator:g3N3rAtED-Pa38931w0rd@rabbitmq-client
