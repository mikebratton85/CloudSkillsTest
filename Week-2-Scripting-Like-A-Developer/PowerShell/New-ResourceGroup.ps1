function New-ResourceGroup {
    [cmdletbinding(SupportsShouldProcess)]

    param (
        [parameter(Mandatory)]
        [string]$rgName,

        [parameter(Mandatory)]
        [string]$location
    )

    $params = @{
        'Name' = $rgname
        'Location' = $location
    }

    if ($PSCmdlet.ShouldProcess('location')){
        New-AZResourceGroup @params
    }
}