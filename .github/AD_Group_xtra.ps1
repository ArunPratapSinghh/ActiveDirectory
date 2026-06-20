$GroupName= "Test_groupName"
Get-adgroup -identity $GroupName -properties * |Select Name,@{Name="GroupOwner";E={($_.ManagedBy -Split ',')[0] -replace 'CN='}},
@{Name="OU";E={($_.DistinguishName -Split ',')[1] -replace 'CN='}},
