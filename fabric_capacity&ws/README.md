# Fabric capacity & workspace

## Requirement

In order for the code to work, you need to define some environment variable to define the Azure tenant & subscription you want to work with.

By setting this, the Terraform azurerm provider will automatically use them if not defined somewhere else in your definition. You can run the following command (by replacing the values by yours) at the beginning of your session terminal or any other way you want.


```shell
$Env:ARM_SUBSCRIPTION_ID = "<SUBSCRIPTION_ID>"
$Env:ARM_TENANT_ID = "<TENANT_ID>"
```