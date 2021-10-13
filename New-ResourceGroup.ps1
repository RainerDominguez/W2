function New-ResourceGroup {
    [CmdletBinding(SupportsShouldProcess)]

    param (
        [Parameter(Mandatory)]
        [string]$rgName,   
        [Parameter(Mandatory)]
        [string]$location
    )
    $params =@{
        'Name' = $rgName
        'Location' = $location}
        if ($PSCmdlet.ShouldProcess('location')){
        New-AzResourceGroup @params
    }
}