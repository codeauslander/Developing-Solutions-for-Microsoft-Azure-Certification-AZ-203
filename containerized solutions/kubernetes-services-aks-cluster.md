# Kubernetes Services (AKS) Cluster
  It is a portable container.
  It can be use in differents cloud services.

## Create Kubernetes Cluster on Azure Portal
  Dashboard > New > Create Kubernetes Cluster

## Comand lines (cloud shell)
  to acces kubernetes specific commans
  `kubectl`

  connect to the cluster (context)
  `az aks get-credentials --resource-group az-203 --name containerKubernetesCluster`
  
  check nodes
  `kubectl get node`

  check folders and files
  `dir`

  deploy code in kubernetes (deployment, service) check nodes and services.
  After deploy you can check the public IP for the front-end (takes a few minutes)
  `kubectl apply -f azure-vote.yaml`

  check services
  `kubectl get service`

## Kubernetes dashboard
  Install Azure CLI
  [install-azure-cli] (https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)

  ### mac
  `brew update && brew install azure-cli`

  ### windows
  download the msi installer

## Command Line (Azure CLI)

  Install kubectl in the cli
  (Update path enviroment for aks)
  `az aks install-cli`

  Get credential cluster
  `az aks get-credentials --resource-group az-203 --name containerKubernetesCluster`

  Open Kubernetes dasboard
  `az aks browse --resource-group az-203 --name containerKubernetesCluster`

## Docker

  



