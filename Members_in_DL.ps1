######User_Details in AD ######

#enter the Name of DL
$Name = Read-host "Enter the name of DL you want to find the members"

#List of Group
#$Name = Get-content -Path C:\temp\DL_list.txt
#$Name = Import-CSV -path C:\temp\DL_List.csv

foreach($DL in $Name)
{
  try{
          #Member in DL
          Get-adgroupmember -identity $Name |Select Name,SamAccountName
  }catch{

      Write-Host "DL not found in AD" -Forgroundcolor Red
  }
  
}
