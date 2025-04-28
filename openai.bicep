param location string = resourceGroup().location
param openAIName string


resource openAiService 'Microsoft.CognitiveServices/accounts@2024-10-01'={
  name: openAIName
  location: location
  kind:'OpenAI'
}
