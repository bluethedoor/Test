$shell = New-Object -ComObject Shell.Application
$shell.MinimizeAll()

$directoryPath = "$env:LOCALAPPDATA\Temp\Win11Debloat\Win11Debloat-master"
New-Item -ItemType Directory -Force -Path $directoryPath | Out-Null

$appListUrl = "https://raw.githubusercontent.com/bluethedoor/Test/refs/heads/main/AppList"
$appListContent = (Invoke-WebRequest -Uri $appListUrl).Content
Set-Content -Path "$directoryPath\CustomAppsList" -Value $appListContent

Start-Process powershell -ArgumentList "-WindowStyle Minimized -Command & ([scriptblock]::Create((Invoke-RestMethod 'https://debloat.raphi.re/'))) -Silent -RemoveAppsCustom -DisableTelemetry -DisableSuggestions -DisableLockscreenTips -DisableWidgets -DisableStartRecommended -ShowHiddenFolders -ShowKnownFileExt -HideSearchTb"

iex "& { $(irm christitus.com/win) } -Config https://raw.githubusercontent.com/bluethedoor/Test/refs/heads/main/Tweaks.json -Run"
