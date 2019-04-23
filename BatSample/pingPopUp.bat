ping 192.168.11.17
IF not %ERRORLEVEL% == 1 (
echo "OK"
) else (
echo "NG"
echo msgbox "error",vbCritical,"error" > %TEMP%/msgboxtest.vbs & %TEMP%/msgboxtest.vbs
)
