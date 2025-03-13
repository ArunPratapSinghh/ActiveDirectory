################################################################################################
#Title: This Script has been made to Create the AD user in Active diretory using Powershell   #     
# Date: 13 March 2024                                                                          #
# Author: Arun Pratap Singh                                                                    #
# Modified Date: 13 March 2024                                                                 #
################################################################################################

#Import Active Directory Module
Import-Module ActiveDirectory

#Location for AD group Path
$OU_Path = ""

#Import Files using txt file
#$User_List = Get-Content -Path D:\User_list.txt

#Import File using csv file
#$User_List = Import-CSV -Path D:\user_list.csv

foreach($Group in $Group_List)
{
      New-User -Name $Group.Name -Path $Path.Path -GroupScope Global -GroupCategory Security -Managedby $Manage.Manage
      Write-Host "$Group.Name has been created" -ForgroundColor Green
    
}
Write-Host "AD user has been created" -ForgroundColor Green
