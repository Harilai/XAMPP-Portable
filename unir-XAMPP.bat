@echo off
setlocal
cd /d "%~dp0"
echo Unificando las 5 partes de XAMPP 8.3.37...
copy /b XAMPP-8.3.37-parte-0.bin+XAMPP-8.3.37-parte-1.bin+XAMPP-8.3.37-parte-2.bin+XAMPP-8.3.37-parte-3.bin+XAMPP-8.3.37-parte-4.bin XAMPP-8.3.37-portable-reconstruido.zip
if errorlevel 1 (
  echo ERROR: no se pudo reconstruir el ZIP.
  pause
  exit /b 1
)
echo.
echo ZIP reconstruido correctamente.
echo Comprueba su SHA-256 con:
echo certutil -hashfile XAMPP-8.3.37-portable-reconstruido.zip SHA256
pause
