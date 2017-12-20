﻿# setup
Set-PSFConfig -Module dbachecks -Name setup.sqlinstance -Value $null -Initialize -Description "List of SQL Server instances that SQL-based tests will run against"
Set-PSFConfig -Module dbachecks -Name setup.computername -Value $null -Initialize -Description "List of Windows Servers that Windows-based tests will run against"
Set-PSFConfig -Module dbachecks -Name setup.testrepo -Value "$script:ModuleRoot\checks" -Initialize -Description "Where tests are stored"
Set-PSFConfig -Module dbachecks -Name setup.sqlcredential -Value $null -Initialize -Description "The universal SQL credential if Trusted/Windows Authentication is not used"
Set-PSFConfig -Module dbachecks -Name setup.wincredential -Value $null -Initialize -Description "The universal Windows if default Windows Authentication is not used"
Set-PSFConfig -Module dbachecks -Name setup.backuppath -Value $null -Initialize -Description "Enables tests to check if servers have access to centralized backup location"
Set-PSFConfig -Module dbachecks -Name setup.backuptestserver -Value $null -Initialize -Description "Destination server for backuptests"
Set-PSFConfig -Module dbachecks -Name setup.backupdatadir -Value $null -Initialize -Description "Destination server data directory"
Set-PSFConfig -Module dbachecks -Name setup.backuplogdir -Value $null -Initialize -Description "Destination server log directory"

# skips
Set-PSFConfig -Module dbachecks -Name skip.backupdiffcheck -Value $false -Initialize
Set-PSFConfig -Module dbachecks -Name skip.datapuritycheck -Value $false -Initialize
Set-PSFConfig -Module dbachecks -Name skip.backuptesting -Value $true -Initialize
Set-PSFConfig -Module dbachecks -Name skip.dbownershouldnot -Value $true -Initialize
Set-PSFConfig -Module dbachecks -Name skip.dbownershould -Value $false -Initialize

# Policy
Set-PSFConfig -Module dbachecks -Name policy.diskspacepercentfree -Value 20 -Initialize -Description "Percent disk free"
Set-PSFConfig -Module dbachecks -Name policy.backupfullmaxdays -Value 1 -Initialize -Description "Maxmimum number of days before Full Backups are considered outdated"
Set-PSFConfig -Module dbachecks -Name policy.backupdiffmaxhours -Value 25 -Initialize -Description "Maxmimum number of hours before Diff Backups are considered outdated"
Set-PSFConfig -Module dbachecks -Name policy.backuplogmaxminutes -Value 15 -Initialize -Description "Maxmimum number of minutes before Log Backups are considered outdated"
Set-PSFConfig -Module dbachecks -Name policy.integritycheckmaxdays -Value 7 -Initialize -Description "Maxmimum number of days before DBCC CHECKDB is considered outdated"
Set-PSFConfig -Module dbachecks -Name policy.identityusagepercent -Value 90 -Initialize -Description "Maxmimum percentage of max of identity column"
Set-PSFConfig -Module dbachecks -Name policy.networklatencymsmax -Value 40 -Initialize -Description "Max network latency average"
Set-PSFConfig -Module dbachecks -Name policy.recoverymodel -Value Full -Initialize -Description "Standard recovery model"
Set-PSFConfig -Module dbachecks -Name policy.dbownershould -Value sa -Initialize -Description "The database owner account should be this user"
Set-PSFConfig -Module dbachecks -Name policy.dbownershouldnot -Value sa -Initialize -Description "The database owner account should not be this user"