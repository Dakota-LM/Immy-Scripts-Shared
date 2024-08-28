# v Listing PCs       v Include Win Sys for IDP                   v IDP inventory                                                                v Primary Person Inventory
Get-ImmyComputer -InventoryKeys WindowsSystemInfo | ? {($_.Inventory.WindowsSystemInfo.DSRegStatus.DeviceState.AzureADJoined -eq "YES") -and ($null -ne $_.PrimaryPersonId) }
