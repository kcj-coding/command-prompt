rem from https://stackoverflow.com/questions/664957/can-i-mask-an-input-text-in-a-bat-file

@echo off
set "psCommand=powershell -Command "$pword = read-host 'Enter Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p
rem echo %password%

echo %password% > file_ui.txt

echo "abc" > file1.txt


