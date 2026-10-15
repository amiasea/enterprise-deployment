identity_token "azure" {
  audience = ["api://AzureADTokenExchange"]
}

deployment "prospective" {
  inputs = {
    organization_name          = "amiasea"
    azure_tenant_id            = "bf451fd9-d382-4da8-9c1a-179a96a4d2f3"
    azure_client_id            = "3a52b666-293d-42e5-9a08-a330f3779bb7"
    azure_subscription_id      = "a1a3e3e6-6a34-455d-b220-f6df7790f905"
    azure_identity_token       = identity_token.azure.jwt
    container_name             = "aca-enterprise-sql-config-prospective"
  }
}

deployment "operative" {
  inputs = {
    organization_name          = "amiasea"
    azure_tenant_id            = "bf451fd9-d382-4da8-9c1a-179a96a4d2f3"
    azure_client_id            = "8893e5ad-3000-481c-8a3c-faca9820bc89"
    azure_subscription_id      = "d9cd6518-e401-4072-a410-a6a67e9b15f6"
    azure_identity_token       = identity_token.azure.jwt
    container_name             = "aca-enterprise-sql-config-operative"
  }
}