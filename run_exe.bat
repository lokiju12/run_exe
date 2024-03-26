@echo off
setlocal enabledelayedexpansion

set "folder=%~dp0Sources"

if not exist "%folder%" (
    echo Folder not found.
    exit /b
)
echo 폴더 내 파일 리스트 입니다.
echo.
for %%F in ("%folder%\*") do (
    if /I "%%~xF"==".exe" (
        echo. %%~nxF
    )
)
echo.
echo [Enter]키를 입력하면 모두 설치합니다.
pause>nul
for %%F in ("%folder%\*") do (
    if /I "%%~xF"==".exe" (
        start "" "%%F"

    )
)

endlocal
