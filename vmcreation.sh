#!/bin/bash

az vm create --name testvm --resource-group $RESOURCE_GROUP --location eastus --size "Standard_B2s"
--image ubuntuLTS