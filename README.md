Docker image for debugging Kubernetes.

```bash
kubectl run --rm -i --tty temp-shell --image=leakymirror/adminbox -- /bin/bash
```
