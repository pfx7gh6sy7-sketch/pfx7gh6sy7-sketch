@echo off
REM Inicia Claude Code Remote Control al encender Windows.
REM 1) Cambie la ruta de abajo por la carpeta real del proyecto.
REM 2) Copie este archivo a: Win+R -> shell:startup
REM 3) Mantener esta ventana abierta (minimizada).

set PROYECTO=C:\Users\%USERNAME%\Documents\WED-CLUDE

REM Evita que el PC se suspenda con corriente AC (0 = nunca)
powercfg /change standby-timeout-ac 0
powercfg /change hibernate-timeout-ac 0

cd /d "%PROYECTO%"

:loop
echo [%date% %time%] Iniciando claude remote-control...
claude remote-control
echo [%date% %time%] Proceso terminado. Reintentando en 15 s...
timeout /t 15 /nobreak >nul
goto loop
