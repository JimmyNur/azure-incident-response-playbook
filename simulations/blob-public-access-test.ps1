$resourceGroup = "Jimmy-Sec-RG"
$storageAccount = "Jimmysecstorage"
$container = "public-test"
$file = "test.txt"

az login
az group create --name $resourceGroup --location westeurope
az storage account create --name $storageAccount --resource-group $resourceGroup --location westeurope --sku Standard_LRS

$key = az storage account keys list --resource-group $resourceGroup --account-name $storageAccount --query [0].value -o tsv

az storage container create --name $container --account-name $storageAccount --account-key $key --public-access blob
echo "This is a sensitive test file" > $file
az storage blob upload --account-name $storageAccount --account-key $key --container-name $container --file $file --name $file

$blobUrl = "https://$storageAccount.blob.core.windows.net/$container/$file"
Write-Output "Public URL: $blobUrl"
 Blob Exposure Simulation Script

File: `simulations/blob-public-access-test.ps1`
