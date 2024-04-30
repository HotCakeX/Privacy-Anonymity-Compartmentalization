
# add Luminar apps's shortcut to desktop of Windows Sandbox
$WshShell = New-Object -comObject WScript.Shell

$Shortcut = $WshShell.CreateShortcut("C:\Users\WDAGUtilityAccount\Desktop\Luminar Neo.lnk")

$Shortcut.TargetPath = "C:\Users\WDAGUtilityAccount\Desktop\Luminar Neo\Luminar Neo.exe"

$Shortcut.Save()

# launches Luminar for the 1st time
cd "C:\Users\WDAGUtilityAccount\Desktop\Luminar Neo" ; .\"Luminar Neo.exe"

# adds delay to the execution of script, letting Luminar to launch, depending on your hardware lower this value

Start-Sleep -Seconds 22

# kills Luminar so that it loads once, produces error about lack of internet connection
taskkill /IM "Luminar Neo.exe" /F

# launches Luminar for the 2nd time, ready to use
cd "C:\Users\WDAGUtilityAccount\Desktop\Luminar Neo" ; .\"Luminar Neo.exe"
