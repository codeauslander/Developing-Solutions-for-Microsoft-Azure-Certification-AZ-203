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

`docker container ls`
`docker-machine ip Default`
local machine ip plus 8080

Turn off docker container
`docker-compose down`

## Container Registry

### Dashboard > New > Create Resource > Containers > Container Registry

Location to store images.
Similar to repositories in github.

SKU capabilities for hooks

Login Server

list docker images
`docker images`

## Tag command

Tag the docker image with the container (registry container) with the server name (Login server)

`docker tag azure-vote-front containerregistryfordockerimages.azurecr.io/azure-vote-front:v1`

Check docker images to see the tagging

`docker images`

Now we need to push the changes and check them in the repositories of the container repository.

`docker push containerregistryfordockerimages.azurecr.io/azure-vote-front:v1`

The idea is to modify the code put it into a virtual machine and deploy the virtual machine.

## AZ-203 Develop Containerize Solutions.

Getting started

https://github.com/Azure-Samples/aks-dotnet-manage-kubernetes-cluster













