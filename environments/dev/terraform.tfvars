location = "westeurope"
resource_group_name = "rg-gitops-dev"
vnet_name = "vnet-dev"
vnet_address_space = ["10.0.0.0/16"]

subnets = [
    {
        name = "aks-subnet"
        address_prefix = "10.0.1.0/24"
    }
]

aks_name = "aks-dev"
aks_dns_prefix = "aksdev"
tenant_id = "49643cf8-1da9-415c-898e-08ad8ec9f64a"
admin_group_object_ids = ["ba375875-49ca-4bf3-bca9-0ed76d7909eb"]

dns_service_ip = "10.240.0.10"
service_cidr = "10.240.0.0/16"

default_node_pool = {
    name = "system"
    node_count = 1
    vm_size = "Standard_B2s"
}

acr_name = "acrdevstudent"
acr_sku = "Basic"
keyvault_name = "kv-dev-student"

tags = {
    environment = "dev"
    project = "gitops"
}