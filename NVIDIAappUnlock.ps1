$appPath = "C:\Program Files\NVIDIA Corporation\NVIDIA App\CEF\NVIDIA app.exe"
$jsonPath = "$Env:USERPROFILE\AppData\Local\NVIDIA Corporation\NVIDIA app\NvBackend\ApplicationStorage.json"
$Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding $False

Set-ItemProperty -Path $jsonPath -Name IsReadOnly -Value $false

Start-Process -Wait -FilePath $appPath

$contents = (Get-Content $jsonPath )
$contents = $contents.Replace('"Disable_FG_Override":true', '"Disable_FG_Override":false')
$contents = $contents.Replace('"Disable_RR_Override":true', '"Disable_RR_Override":false')
$contents = $contents.Replace('"Disable_SR_Override":true', '"Disable_SR_Override":false')
$contents = $contents.Replace('"Disable_RR_Model_Override":true', '"Disable_RR_Model_Override":false')
$contents = $contents.Replace('"Disable_SR_Model_Override":true', '"Disable_SR_Model_Override":false')
[System.IO.File]::WriteAllLines($jsonPath, $contents, $Utf8NoBomEncoding)

Set-ItemProperty -Path $jsonPath -Name IsReadOnly -Value $true

Restart-Service -Force -Name "NVDisplay.ContainerLocalSystem"
Restart-Service -Force -Name "NvContainerLocalSystem"