@echo off
cls

echo MPool.pro XMR Auto-Miner Installer for Windows
echo -----------------------------------------------
echo.

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] Please run this script as Administrator!
    pause
    exit
)

set /p wallet=[?] Enter your Monero wallet address: 
echo.

set walletLength=0
for /l %%i in (0, 1, 105) do (
    set "char=!wallet:~%%i,1!"
    if not "!char!"=="" set /a walletLength+=1
)

if %walletLength% lss 95 (
    echo [!] Invalid Monero wallet address format!
    pause
    exit
)

echo [+] Wallet address accepted!

echo [*] Downloading XMRig...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-msvc-win64.zip' -OutFile 'xmrig.zip'"

echo [*] Extracting XMRig...
powershell -Command "New-Item -ItemType Directory -Path 'C:\Xmrig' -Force | Out-Null"
powershell -Command "Expand-Archive -Path 'xmrig.zip' -DestinationPath 'C:\Xmrig' -Force"

echo [*] Creating batch script...
(
    echo @echo off
    echo start "" "C:\Xmrig\xmrig-6.17.0\xmrig.exe" -o world.mpool.pro:4242 -u %wallet% -p monero -a rx/0 -k --tls
    echo pause
) > "%~dp0start_mining.bat"

echo [*] Installation complete!
echo [+] To start mining, double-click the 'start_mining.bat' file!

del xmrig.zip
pause
