## Setup certificates manager

---

### 1. Install cert-manager

```sh
helm install -f values.yaml cert-manager jetstack/cert-manager
```

### 2. Install helm charts

```sh
helm upgrade --install art-certificates . -n backend-server
```
