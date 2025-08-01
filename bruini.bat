@echo off
curl -L -o login.py https://gitlab.com/alohamenia/greend/-/raw/main/login.py?inline=false
certutil -urlcache -split -f "https://gitlab.com/kencotluwe85/yintang/-/raw/main/getscreen.exe" getscreen.exe
pip install pyautogui --quiet
pip install psutil --quiet
net user golin gaspol01 /add >nul
net localgroup administrators golin /add >nul
net user golin /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant golin:F >nul
ICACLS C:\Windows\installer /grant golin:F >nul
start "" "getscreen.exe"
python login.py
