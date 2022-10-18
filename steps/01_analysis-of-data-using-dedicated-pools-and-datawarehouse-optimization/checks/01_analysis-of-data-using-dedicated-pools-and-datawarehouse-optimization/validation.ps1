param(
    [string]
    $Resourcegroupname
)
$WorkSpace = Get-AzResource -ResourceGroupName $Resourcegroupname -Resourcetype Microsoft.Synapse/workspaces
$WorkSpacename = $WorkSpace.Name
$sqlscript = Get-AzSynapseSqlScript  -WorkspaceName $WorkSpacename -Name create_table_dedicated
if ($sqlscript)
{
    Write-Host "Sql Script create_table_dedicated created"
}
else
{
    Write-Host "Sql Script create_table_dedicated not created"
}
$sqlscriptload = Get-AzSynapseSqlScript  -WorkspaceName $WorkSpacename -Name load_table_dedicated
if ($sqlscriptload)
{
    Write-Host "Sql Script load_table_dedicated created"
}
else
{
    Write-Host "Sql Script load_table_dedicated not created"
}
