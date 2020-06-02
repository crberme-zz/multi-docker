#!/bin/bash
kubectl apply -f k8s
kubectl set image deployments/client-deployment client=crberme/complex-client:$SHA
kubectl set image deployments/server-deployment server=crberme/complex-server:$SHA
kubectl set image deployments/worker-deployment worker=crberme/complex-worker:$SHA