
############DNS Resolve ##################

Resolve-DNS -Name $Server_Name

Get-dnsserverresourcerecord -Zonename $ZoneName -ComputerName $DNSComputerName -Name $ServerName -RRType A 
Get-dnsserverresourcerecord -Zonename $ZoneName -ComputerName $DNSComputerName -Name $ServerName -RRType PTR
