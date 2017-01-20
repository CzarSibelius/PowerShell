$sourceFolder = $pwd
$destinationFolder = "C:\Program Files\Microsoft SQL Server\90\DTS\Packages\xxx"
$fileNames = @( "a.dtsx",
                "b.dtsx")

function copyToProgramFiles($FileName)
{
    Write-Host "Copying file $FileName...." -NoNewline
    Copy-Item -Path "$sourceFolder\$FileName" -Destination "$destinationFolder\$FileName"
    Write-Host "Done!"
}

foreach ($fileName in $fileNames)
{
    copyToProgramFiles -FileName $fileName
}
