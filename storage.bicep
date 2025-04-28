param storageAcctName string
param location string = resourceGroup().location

resource storageAcct 'Microsoft.Storage/storageAccounts@2024-01-01' = {
  name: storageAcctName
  location:location
  kind: 'Storage'
  sku:{name:'Standard_LRS'}
}
