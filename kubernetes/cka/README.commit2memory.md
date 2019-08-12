# commit2memory

- review these commands and info daily to commit them to memory


- what is my current namespace?

```
kubectl config view -o  'jsonpath={..namespace}'
```

- run a Pod named `redis` using image `redis`

```
kubectl run pod redis --image=redis --restart=Never
```

- generate the YAML for a Pod

```
kubectl run redis --image=redis --dry-run -o yaml
```

- In which namespace is a Pod named test-cassandra-0 running?

```
kubectl get pods --all-namespaces --field-selector 'metadata.name=test-cassandra-0'
NAMESPACE   NAME               READY   STATUS    RESTARTS   AGE
test        test-cassandra-0   1/1     Running   0          51d
```

- list all Pods in all namespaces in Running state

- List pods in all namespaces, sort them by ????

