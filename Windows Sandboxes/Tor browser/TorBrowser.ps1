# Set timezone to a random country
Set-TimeZone -Id "China Standard Time"

# add Tor browser's shortcut to desktop of Windows Sandbox 
$WshShell = New-Object -comObject WScript.Shell 

$Shortcut = $WshShell.CreateShortcut("C:\Users\WDAGUtilityAccount\Desktop\TorBrowser.lnk") 

$Shortcut.TargetPath = "C:\TorBrowser\Browser\firefox.exe"

$Shortcut.Save() 

& "C:\TorBrowser\Browser\firefox.exe"
