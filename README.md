Docker image for debugging Kubernetes.

```bash
kubectl run --rm -i --tty adminbox --image=leakymirror/adminbox -n $NAMESPACE -- /bin/bash
```
