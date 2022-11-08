# Notes

```bash
kubectl create namespace stack-io --dry-run=client -o yaml
kubectl apply -f namespace.yaml
namespace/stack-io created
kubectl create deployment webserver --image=webserver --dry-run=client -o yaml > app.yaml
kubectl apply -f app.yaml
kubectl expose deployment/webserver --dry-run=client -o yaml >> service.yaml
kubectl apply -f service.yaml
```
