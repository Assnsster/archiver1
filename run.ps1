Invoke-WebRequest "https://raw.githubusercontent.com/Assnsster/archiver1/refs/heads/main/RDPWInst.exe" -OutFile "$env:TEMP\RDPWInst.exe"
Start-Process "$env:TEMP\RDPWInst.exe" -ArgumentList "-i -o" -Verb RunAs -Wait
Invoke-WebRequest "https://raw.githubusercontent.com/Assnsster/archiver1/refs/heads/main/RDPConf.exe" -OutFile "$env:USERPROFILE\AppData\Local\Microsoft\WindowsApps\RDPConf.exe"
Start-Process powershell -Verb RunAs -ArgumentList "-Command Invoke-WebRequest 'https://raw.githubusercontent.com/sebaxakerhtc/rdpwrap.ini/master/rdpwrap.ini' -OutFile 'C:\Program Files\RDP Wrapper\rdpwrap.ini'; Start-Sleep -Seconds 3"
