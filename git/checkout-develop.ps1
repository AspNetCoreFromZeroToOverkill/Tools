foreach($val in Get-Content .\code-repositories.txt) 
{
    
    if ( Test-Path -Path "../../$val" -PathType Container ) 
    {
        Write-Host "-------------------------"
        Write-Host "Checking out develop for $val..."
        git -C ../../$val checkout develop
        git -C ../../$val pull
        Write-Host "-------------------------"
    }
    else 
    {
        Write-Host "$val does not exist, skipping"
    }
}