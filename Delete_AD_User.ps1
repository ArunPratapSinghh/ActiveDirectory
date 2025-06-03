
################################################################################################
#Title: This Script has been made for Delete_AD_group in Active diretory using Powershell   #     
# Date: 14 March 2024                                                                          #
# Author: Arun Pratap Singh                                                                    #
# Modified Date: 03 June 2025                                                                 #
################################################################################################

#Import Active Directory Module
Import-Module ActiveDirectory

#list of servers
$list = Get-content -Path C:\temp\server_list.txt

foreach($Users in $list){

    Get-Aduser -identity $User |Remove-Aduser -confirm:$false
    Write-Host "$Users has been deleted from active Directory" -Forgroundcolor green

}

Write-Host "Script has been completed" -ForgroundColor Cyan 
