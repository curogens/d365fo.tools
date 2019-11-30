[CmdletBinding()]
param
(
    [Parameter(Mandatory=$true)]
    [string] $Username,

    [parameter(Mandatory=$true)]
    [string] $Password,

    [parameter(Mandatory=$true)]
    [string] $FullName
)


$Pwd = ConvertTo-SecureString -String $Password -AsPlainText -Force
New-LocalUser $Username -FullName $FullName -Password $Pwd -PasswordNeverExpires
Add-LocalGroupMember -Group "Administrators" -Member $Username
Add-LocalGroupMember -Group "Data Management Gateway Users" -Member $Username
Add-LocalGroupMember -Group "Performance Log Users" -Member $Username
$User = [System.Net.Dns]::GetHostName() + "\$Username"
$DBServer = [System.Net.Dns]::GetHostName()

Invoke-Expression "$PSScriptRoot\ProvisionAxDeveloper.ps1 -users $User -databaseServerName $DBServer"
