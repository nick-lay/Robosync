# Robosync
#
#
#


# Magic world
Set-Variable MAGIC -Value "MAGIC"

# Source path
Set-Variable Source -Value ""

# Destination path
Set-Variable Dest -Value "./"


function CheckMagic () {
    if (($MAGIC -eq $null) -or ($MAGIC -eq "")) {
        Write-Output "Set MAGIC word"
        Exit
    }
}


CheckMagic



Write-Output ""