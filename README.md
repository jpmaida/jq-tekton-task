# Tekton Task JQ

Repository dedicated to Tekton Task JQ.

In order to build the JQ image locally use:

```shell
podman build -t jq .
podman run -it localhost/jq /bin/bash
```

In order to use task in your pipeline you'll need to install it first. Use the following code to install.

```shell
oc apply -f jq-task.yaml -n <namespace>
```

In the 'test' folder some unit test can be found. In order to execute those tests, execute:

```shell
oc apply -R -f test -n <namespace>
```