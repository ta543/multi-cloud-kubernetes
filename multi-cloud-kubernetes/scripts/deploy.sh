#!/bin/bash

# Define paths to Prometheus and Grafana configurations
PROMETHEUS_DIR="../kubernetes/monitoring/prometheus"
GRAFANA_DIR="../kubernetes/monitoring/grafana"

# Function to deploy Prometheus configurations
deploy_prometheus() {
    echo "Deploying Prometheus..."
    kubectl apply -f ${PROMETHEUS_DIR}/clusterRole.yaml
    kubectl apply -f ${PROMETHEUS_DIR}/config-map.yaml
    kubectl apply -f ${PROMETHEUS_DIR}/deployment.yaml
    kubectl apply -f ${PROMETHEUS_DIR}/service.yaml
    echo "Prometheus deployed successfully."
}

# Function to deploy Grafana configurations
deploy_grafana() {
    echo "Deploying Grafana..."
    kubectl apply -f ${GRAFANA_DIR}/deployment.yaml
    kubectl apply -f ${GRAFANA_DIR}/service.yaml
    echo "Grafana deployed successfully."
}

# Check if Kubernetes configurations exist before deploying
if [ -d "$PROMETHEUS_DIR" ] && [ "$(ls -A $PROMETHEUS_DIR)" ]; then
    deploy_prometheus
else
    echo "Prometheus configuration files not found in $PROMETHEUS_DIR."
fi

if [ -d "$GRAFANA_DIR" ] && [ "$(ls -A $GRAFANA_DIR)" ]; then
    deploy_grafana
else
    echo "Grafana configuration files not found in $GRAFANA_DIR."
fi
