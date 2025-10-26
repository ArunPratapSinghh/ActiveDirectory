# AI Agent Instructions for ActiveDirectory PowerShell Scripts

## Project Overview
This repository contains PowerShell scripts for managing Active Directory operations. The scripts handle various AD administrative tasks like user management, group management, DNS operations, and system information gathering.

## Architecture & Patterns

### Script Structure
- Each script follows a consistent pattern:
  1. Header block with title, date, author info
  2. Module imports (primarily ActiveDirectory)
  3. Variable definitions for paths/settings
  4. Main operation logic
  5. Status output using Write-Host with color coding

Example from `AD_User.ps1`:
```powershell
Import-Module ActiveDirectory
$OU_Path = ""  # Organization Unit path definition
# Main operation logic
Write-Host "Status message" -ForegroundColor Green/Red  # Color-coded output
```

### Data Input Patterns
Scripts support multiple input methods:
- Interactive input using `Read-Host`
- File-based input from:
  - Text files using `Get-Content`
  - CSV files using `Import-CSV`
Each script includes commented examples of both methods.

### Error Handling
Scripts use try-catch blocks for error handling with color-coded output:
- Green: Success messages
- Red: Error messages

## Key Components

### User Management
- `AD_User.ps1`: Create AD users
- `Delete_AD_User.ps1`: Remove AD users
- `Disable_user.ps1`: Disable user accounts
- `Lockout_user.ps1`: Manage account lockouts

### Group Management
- `AD_Group.ps1`: Create AD groups
- `Delete_AD_group.ps1`: Remove AD groups
- `Members_in_DL.ps1`: List distribution group members

### System Operations
- `DC_details.ps1`: Domain Controller information
- `DNS_*.ps1`: DNS management scripts
- `Event_Logs.ps1`: Event log access
- `Software_Installed.ps1`: Software inventory

## Development Workflow
1. Scripts should be run with appropriate AD administrative privileges
2. Test changes in a non-production environment first
3. Include clear status messages for operations using Write-Host
4. Always include error handling for AD operations

## Cross-Component Integration
- Scripts interact with Active Directory through the ActiveDirectory PowerShell module
- DNS operations integrate with AD DNS services
- System information scripts interact with Windows system APIs