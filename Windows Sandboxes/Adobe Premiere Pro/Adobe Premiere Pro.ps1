# Install latest VS redist
# Start-Process -FilePath "C:\Users\WDAGUtilityAccount\Desktop\000\VC_redist.x64.exe" -ArgumentList '/quiet' -Wait
Start-Process -FilePath "C:\Users\WDAGUtilityAccount\Desktop\000\VC_redist.x64.exe" -Wait

# add Adobe Premiere's shortcut to desktop of Windows Sandbox
$WshShell = New-Object -comObject WScript.Shell

$Shortcut = $WshShell.CreateShortcut("C:\Users\WDAGUtilityAccount\Desktop\Adobe Premiere Pro.lnk")
$Shortcut.TargetPath = "C:\Users\WDAGUtilityAccount\Desktop\Adobe Premiere Pro 2026\Adobe Premiere Pro.exe"
$Shortcut.Save()

& "C:\Users\WDAGUtilityAccount\Desktop\Adobe Premiere Pro 2026\Adobe Premiere Pro.exe"
