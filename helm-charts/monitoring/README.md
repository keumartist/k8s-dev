## Setup monitoring with Prometheus and Grafana

### 1. Install Prometheus

```sh
helm install prometheus prometheus-community/prometheus -n monitoring -f prometheus-values.yaml
```

### 2. Install Grafana

```sh
helm install grafana grafana/grafana -n monitoring -f grafana-values.yaml
```

### 3. Access Grafana UI by port forwarding

```sh
kubectl port-forward -n monitoring svc/grafana 3000:80
```

You can use ingress to make your team have access to Grafana UI on open URI with auth
