# Azure-Container-Registry-Demo
This Azure Container Registry (ACR) demo repository showcases the deployment of containerized applications using Azure Container Registry. The repository contains Dockerfiles, configuration files, and scripts necessary to build and deploy container images.


## Build Docker Image

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Mouhamed-dridi/Azure-Container-Registry-Demo.git
   cd Azure-Container-Registry-Demo  ```


### create docker file
```bash
docker build -t your-image-name
 ```


### Tag the Docker Image 
```bash
 docker tag nginx-hello-world azurhub.azurecr.io/nginx-hello-world:v1
 ```

## Azur Cloud Config 
2. **Downlade Cli:**
link  : https://learn.microsoft.com/en-us/cli/azure/install-azure-cli


### login azur via Cli
```bash
az login
```

### Create resurce Group
```bash
az group create --name azurcontainer --location westeurope
```

### Create Conatiner registrory
```bash
az acr create --resource-group azurcontainer --name container-repo --sku Basic --location westeurope
```

### show
```bash
az acr show --name conantier --resource-group azurcontainer --output table
az acr repository list --name conantier --output table
```

### Login to ACR:
```bash
az acr login -n container-repo
```

### Push Image to ACR:
```bash
 docker push azurhub.azurecr.io/nginx-hello-world:v1
```



