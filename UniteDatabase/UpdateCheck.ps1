$Root = split-path -parent $MyInvocation.MyCommand.Definition
$Folder = $Root + "\UpdateCheck"
$Web = "https://unite-db.com"

Function Get-File ($Url)
{
    Start-BitsTransfer -Source $Url -Destination $Folder
}

Get-File -Url "$Web/pokemon.json"
Get-File -Url "$Web/stats.json"
Get-File -Url "$Web/battle_items.json"
Get-File -Url "$Web/held_items.json"
Get-File -Url "$Web/emblems.json"
Get-File -Url "$Web/emblem_sets.json"
