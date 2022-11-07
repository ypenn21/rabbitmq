#Install using operator https://www.rabbitmq.com/kubernetes/operator/quickstart-operator.html
 * kubectl apply -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"
 * kubectl rabbitmq install-cluster-operator
 * kubectl get all -n rabbitmq-system
 * kubectl get customresourcedefinitions.apiextensions.k8s.io
 * kubectl apply -f https://raw.githubusercontent.com/rabbitmq/cluster-operator/main/docs/examples/hello-world/rabbitmq.yaml
 * kubectl delete rabbitmqclusters.rabbitmq.com hello-world
#perf test
 * username="$(kubectl get secret hello-world-default-user -o jsonpath='{.data.username}' | base64 --decode)"
 * password="$(kubectl get secret hello-world-default-user -o jsonpath='{.data.password}' | base64 --decode)"
 * service="$(kubectl get service hello-world -o jsonpath='{.spec.clusterIP}')"
 * kubectl run perf-test --image=pivotalrabbitmq/perf-test -- --uri amqp://$username:$password@$service
