$file = $Args[0]

foreach($val in Get-Content .\$file) 
{    
    if ( Test-Path -Path "../../$val" -PathType Container ) 
    {
        Write-Host "-------------------------"
        Write-Host "Pulling $val..."
        git -C ../../$val pull
        Write-Host "-------------------------"
    }
    else 
    {
        Write-Host "$val does not exist, skipping"
    }
}