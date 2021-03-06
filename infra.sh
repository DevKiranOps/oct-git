#!/bin/bash

# Sourcing variables from vars.txt
source ./vars.txt 

echo "Creating Resource Group :$RESOURCE_GROUP"
az group create --name $RESOURCE_GROUP --location $REGION


az network vnet create --name $VNET_NAME \
                       --resource-group $RESOURCE_GROUP 
                       --cidr-block $VNET_CIDR


az network vnet delete 

az network vnet subnet create --name $SUBNET1 --tag name="subent" \
                             --address-prefix $WEB_SUBNET_CIDR \
                             --vnet-name $VNET_NAME


az vm create --name $FIRST_VM_NAME --resource-group $RESOURCE_GROUP --location eastus
az vm create --name $SECOND_VM_NAME --resoruce-group $RESOURCE_GROUP --location westus






