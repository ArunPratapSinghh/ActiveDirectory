
####Disk_Information_checked$########

get-psdrive |Where-Object {$_.Provider -imatch 'FileSystem'} |ft -AutoSize
