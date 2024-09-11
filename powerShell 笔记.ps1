# powerShell 打包zip
$filePath = "C:\Users\v-horizonhe\code\CMD-Quality-Shared\TestTenantsAutomation\Modules\CommonUtilities.psm1"
$zipname = [System.IO.Path]::ChangeExtension($filePath, '.zip')
Compress-Archive -Path $filePath -DestinationPath $zipname
