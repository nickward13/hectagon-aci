#!/bin/sh

az group create --name hectagon-aci --location eastus
az container create --name aspnetcoreapp --image hectagon/aspnetcoreapp --resource-group hectagon-aci --ip-address public --ports 80
az container show --name aspnetcoreapp --resource-group hectagon-aci
