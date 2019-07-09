# variables
$rgName = 'az-203'
$stgAcctName = 'iaas-storage-203'
$location = 'southcentralus'
$batchAcctName = 'iass-batch-203'
$poolName = 'iaas-pool-203'
$nodeAgentSkuId = 'batch.node.ubuntu 16.04'
$query = 'allocationState'
$commandLine = "/bin/bash -c 'printenv | grep AZ_BATCH; sleep 90s'"

# group
az group create -l $location -n $rgName
# storage
az storage account create -g $rgName -n $stgAcctName -l $location --sku Standard_LRS
# batch
az batch account create --storage-account $stgAcctName -g $rgName -l $location
# batch login
az batch account login -n $batchAcctName -g $rgName --shared-key-auth
# pool
az pool account create --id $poolName --vm-size Standard_A1_v2 --target-dedicated-nodes 2 --image canonical:ubuntuserver:16.04-LTS --node-agent-sku-id $nodeAgentSkuId
# pool show
az batch pool show --pool-id $poolName --query $query
# batch job
az batch job create --id myjob --pool-id $poolName

# batch tasks
for ($i = 0; $i -lt 4; $i++) {
    az batch task create --task-id mytask$i --job-id myjob --command-line $commandLine
}

# batch task show
az batch task show --job-id myjob --task-id mytask1

# batch task file
az batch task file list --job-id myjob --task-id mytask1 --output table

# batch task file download
az batch task file download --job-id myjob --task-id mytask0 --file-path stdout.txt --destination ./stdout0.txt

# batch pool delete
az batch pool delete -n $poolName

# group delete
az group delete -n $rgName