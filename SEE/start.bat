@echo off

echo Enter the target host IP and one-click installation if there is no password protection.

set /p host="Target IP="

::-u Administrator 

call D:\SEE\PsExec64.exe \\%host% -s -f -c "D:\SEE\seewo_mihoyo.exe"
echo copy ok

call D:\SEE\PsExec64.exe -s "C:\ha\set.bat"
echo check ok

call D:\SEE\PsExec64.exe -s "C:\ha\clean.bat"
echo clean ok

pause