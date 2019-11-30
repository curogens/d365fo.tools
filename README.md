# d365fo.tools
Tools & scripts for Dynamics 365 Finance & Opertaions environments.

##CreateD365User.ps1
When a OneBox development machine is deployed, only an Admin user account has been created on the virtual machine. This script uses the ProvisionAxDeveloper.ps1 to create a Windows administrator user and adds it to SQL Server as a sysadmin. For more information, see [Create new users on development machines](https://docs.microsoft.com/en-us/dynamics365/fin-ops-core/dev-itpro/dev-tools/enable-development-machine) and [Dynamics-AX-Scripts](https://github.com/microsoft/Dynamics-AX-Scripts).
