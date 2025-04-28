targetScope = 'subscription'

param RGName string = 'RG_new'
param RGLocation string = '(Asia Pacific) South India'
param searchServiceName string = 'search_srvc_new'
param sku string = 'free'
param storageAcctName string = 'storage_srvc_new'

param openAIName string = 'openai_srvc_new'

resource newRG 'Microsoft.Resources/resourceGroups@2024-11-01' = {
    name: RGName
    location: RGLocation
}

module searchService 'searchService.bicep' = {
    name:'searchServiceModule'
    scope: newRG
    params:{
        searchServiceName: searchServiceName
        sku_str:sku
    }
}

module openAI 'openai.bicep' = {
  scope: newRG
  name: 'openaiModule'
  params:{
    openAIName: openAIName
  }
}

module storageAcct 'storage.bicep' = {
  scope: newRG
  name: 'storagemodule'
  params:{
    storageAcctName:storageAcctName
  }
}

