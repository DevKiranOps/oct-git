#!/bin/bash

# Sourcing variables from vars.txt
source ./vars.txt 

echo "Creating Resource Group :$RESOURCE_GROUP"
az group create --name $RESOURCE_GROUP --location $REGION


az network vnet create --name $VNET_NAME \
                       --resource-group $RESOURCE_GROUP 
                       --cidr-block $VNET_CIDR


az vm create --name $VM_NAME --resource-group $RESOURCE_GROUP --location eastus
