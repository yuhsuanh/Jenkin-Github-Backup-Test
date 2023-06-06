SET "URL=https://www.example.com/

SET HTTP=
for /f %%a in ( '"%SCRIPT_DIR%\curl" -s -o nul -v -X POST -w "%%{http_code}" "%URL%"' ) do set HTTP=%%a

if "%HTTP%" == "200" (
    echo successed
    exit /b 0
) else (
    echo failed
    exit /b 1
)
