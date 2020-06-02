# Prometheus/Grafana Helm Chart
Prometheues and Granfana Charts to monitor metrics within a OpenShift Cluster.   
Prometheus is configured to scrape Pods, Services, Federation metrics (CPU, MEM) and Federation PVC (Storage).   
There are seperate Charts for Grafana and Prometheus, which can be deployed independently of each other.   

## Prerequisites
- Helm

## Installing
To install Prometheus and Grafana, fill out the `prometheus-grafana/values.yaml`. (required values are commented)   
Select Project, and deploy with:
```
helm install <relase-name> prometheus-grafana
```

### Single
Grafana and Prometheus charts inside `prometheus-grafana/charts/` are independent and can be deployed as single chart.   
Please fill out the required values in `values.yaml`.
