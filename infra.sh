#!/bin/bash

# Sourcing variables from vars.txt
source ./vars.txt 

echo "Creating Resource Group :$RESOURCE_GROUP"
az group create --name $RESOURCE_GROUP --location $REGION


az network create --name $VNET_NAME --cidr-block $VNET_CIDR 