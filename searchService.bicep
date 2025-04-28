param searchServiceName string
param sku_str string = 'free'
param location string = resourceGroup().location

resource searchService 'Microsoft.Search/searchServices@2025-02-01-preview' = {
  name:searchServiceName
  location: location
  sku:{name:sku_str}
}
