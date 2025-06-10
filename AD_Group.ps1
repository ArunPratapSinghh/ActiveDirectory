################################################################################################
#Title: This Script has been made to Create the AD Group in Active diretory using Powershell   #     
# Date: 13 March 2025                                                                          #
# Author: Arun Pratap Singh                                                                    #
# Modified Date: 13 may 2025                                                                 #
################################################################################################

#Import Active Directory Module
Import-Module ActiveDirectory

#Location for AD group Path
$OU_Path = ""

#Import Files using txt file
#$Group_List = Get-Content -Path D:\group_list.txt

#Import File using csv file
#$Group_List = Import-CSV -Path D:\group_list.csv

foreach($Group in $Group_List)
{
      New-Adgroup -Name $Group.Name -Path $Path.Path -GroupScope Global -GroupCategory Security -Managedby $Manage.Manage
      Write-Host "$Group.Name has been created" -ForgroundColor Green
    
}
Write-Host "AD group has been created" -ForgroundColor Green
