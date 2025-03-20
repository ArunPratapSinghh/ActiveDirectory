##################################################################################################################
#Title: This Script has been made to Create to find the users information in  Active diretory using Powershell   #     
# Date: 20 March 2024                                                                                            #
# Author: Arun Pratap Singh                                                                                      #
# Modified Date: 20 March 2024                                                                                   #
##################################################################################################################

#Import Active Directory Module
Import-Module ActiveDirectory

#User id
$Id = Read-host "Enter the user id to find in the active directory"

#Import Files using txt file
#$Group_List = Get-Content -Path D:\User_id_List.txt

#Import File using csv file
#$Group_List = Import-CSV -Path D:\User_id_List.csv

foreach($Group in $Group_List)
{
      $User_Infomation =Get-Aduser -identity $Id -properties * |Select-Object Name,SamAccountName,WhenCreated,Passwordlastset,PasswordExpired,Lastlogondate |Format-table -Autosize
      $User_Infoarmtion |Out-file -Path C:\temp\User_infomartion.txt -Append
      Write-Host "$Id has been found " -ForgroundColor Green
      
    
}
Write-Host "AD group has been created" -ForgroundColor Green
