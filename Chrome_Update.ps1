######Chrome Update#########333####

#Server list for chrome update
$List = Get-content -path C:\temp\Server-list.txt

#Google chrome latest version i.e.134.6889.0.177
$Software_directory = "C:\temp\Software\Chrome\Googlechrome.exe"

$Current_version = Read-Host "enter the google chrome current version(in number)"

#for loop
foreach($VM in $List)
 {

       $Status = Test-connection -computerName $VM -Count 2 -quiet
       if($Status -match 'true'){

               $version = Get-package -Name "Google Chrome"
               if($version).Version -eq $Current_version){

                 Write-Host "Google chrome $Current_version is already updated on the server $VM" -Forgroundcolor Green
                 }
                 else{

                    Write-Host "Google chrome update has been started on server $VM" -Forgroundcolor Cyan
                    Start-Process -Path $Software_directory -ArgumentList "\Silent \norestart" -NoNewWindow
                    Start-sleep -second 10
                    #referesh 
                    $Latest_version =(Get-package -Name "Google Chrome").Verion
                    Write-Host "Google chrome $Latest_version is installed on the server" -Forgroundcolor Green
                  
                 }

      }else
        {
            Write-Host "Server  $VM is not pinging.Kindly check the list "
        }

}

Write-Host "Script has been completed" -ForgroundColor Yellow
