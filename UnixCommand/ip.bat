@echo off
setlocal
SET option=%1
if %option% == a (
    ipconfig
) else (
    ipconfig %1
)
endlocal
