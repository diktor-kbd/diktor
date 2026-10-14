set "KBDUTOOL=C:\Program Files (x86)\Microsoft Keyboard Layout Creator 1.4\bin\i386\kbdutool.exe"

if not exist "generated" mkdir "generated"

for %%F in (klc\*.klc) do (
    if not exist "generated\%%~nF" mkdir "generated\%%~nF"

    pushd "generated\%%~nF"
    "%KBDUTOOL%" -u -s "..\..\%%F"
    popd
)
