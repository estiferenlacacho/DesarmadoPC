@echo off
REM ============================================================
REM Servidor local para la página de DesarmadoPC
REM Requiere Python 3 (python.org, marca "Add python.exe to PATH")
REM La PC y los celulares deben estar en la MISMA red Wi-Fi.
REM ============================================================
cd /d "%~dp0"
echo.
echo Direcciones IP de esta computadora:
ipconfig | findstr /R /C:"IPv4"
echo.
echo En la PC y en los celulares abre:  http://TU-IP:8000
echo (por ejemplo http://192.168.1.20:8000). El QR de la pagina se genera solo.
echo Para detener el servidor cierra esta ventana o pulsa Ctrl+C.
echo.
python -m http.server 8000 --bind 0.0.0.0
pause
