# Script assumes that you are running it from your Python home directory

param(
    [Parameter(Mandatory=$true)]
    [string]$ui,
    [string]$qrc,
    [string]$out="null"
)

if ($out -eq "null")
{
    $out = $ui.split("\")[-1]
}

cd Scripts
pyrcc5 $qrc -o resources_rc.py 
pyuic5 $ui -o $out
