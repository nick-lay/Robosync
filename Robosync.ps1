# Robosync
#
#
#


# Magic world
Set-Variable MAGIC -Value ""

# Source path
#Set-Variable sourceFolder -Value ""

# Destination path
#Set-Variable destinationFolder -Value ""

# MAGIC filename
Set-Variable MAGICfile -Value ".magic"

function CheckMagic () {
    if (($MAGIC -eq $null) -or ($MAGIC -eq "")) {
        Write-Output "Set MAGIC word"
        Exit
    }
}


CheckMagic

$magicPath = $sourceFolder + "/" + $MAGICfile
if (Test-Path $magicPath) {
    $content = Get-Content $magicPath
 
    if ($content -eq $MAGIC) {
        # Check complete
        # coping file
        Robocopy $sourceFolder $destinationFolder /MIR /FFT /Z /XA:H /W:5 /Xf Robosync.ps1
    } else {
        # test failed
        exit
    }
}
