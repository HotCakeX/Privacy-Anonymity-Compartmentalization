# Set timezone to a random country
Set-TimeZone -Id "Afghanistan Standard Time"

# Since the original Tor folder from host is read-only, we need to copy it to another location otherwise it won't work
Copy-Item -Recurse -Path 'C:\TorBrowser' -Destination 'C:\TorBrowser2' -Force

# add Tor browser's shortcut to desktop of Windows Sandbox
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\Users\WDAGUtilityAccount\Desktop\TorBrowser.lnk")
$Shortcut.TargetPath = "C:\TorBrowser2\Browser\firefox.exe"
$Shortcut.Save()

# launch Tor browser
& "C:\TorBrowser2\Browser\firefox.exe"
