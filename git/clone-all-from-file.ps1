$file = $Args[0]

foreach($val in Get-Content .\$file) 
{    
    if ( Test-Path -Path "../../$val" -PathType Container ) 
    {
        Write-Host "$val already exists, skipping"
    }
    else 
    {
        Write-Host "-------------------------"
        Write-Host "Cloning $val..."
        git clone https://github.com/AspNetCoreFromZeroToOverkill/$val.git ../../$val
        Write-Host "-------------------------"
    }
}