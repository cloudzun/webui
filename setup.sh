az group create --name webui --location eastasia
az vm create --resource-group webui --name mywebui01 --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B1s --custom-data SS.txt  
az vm open-port --resource-group webui --name mywebui01 --port 6800-6888 --priority 1001
