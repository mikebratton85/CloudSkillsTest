param name string = 'uniquestoragename030221'
param location string = 'eastus'

var storageSku = 'Standard_LRS'

resource storageaccount 'Microsoft.Storage/storageAccounts@2020-08-01-preview' = {
  name: 'uniquestoragename030221'
  location: location
  kind: 'Storage'
  sku: {
    name: storageSku
  }
  properties: {
    allowBlobPublicAccess:false
  }
}

output id string = storageaccount.id