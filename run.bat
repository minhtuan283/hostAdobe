powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/minhtuan283/hostAdobe/main/scheduler.xml' -OutFile 'C:\scheduler.xml'"
schtasks /create /tn "AdobeHostBlock" /xml "C:\scheduler.xml" /f
Remove-Item "C:\scheduler.xml" -Force
echo Task đã được import thành công!
