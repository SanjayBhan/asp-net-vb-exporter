@echo off
echo.
echo.
echo.
echo Clearing folder structure...
rd /s /q ".\asp-net-export-handler\." 1>nul 2>&1
mkdir ".\asp-net-export-handler" 1>nul 2>&1
del /q "..\production\asp-net-export-handler.zip" 1>nul 2>&1
echo.
echo Copying production ready files...
xcopy /y /s /e /exclude:exclude-pdb  "..\asp-net-export-handler\*.*" ".\asp-net-export-handler" 
echo.
echo Making production package...
7za.exe a -r "..\production\asp-net-export-handler.zip" ".\asp-net-export-handler"
rd /s /q ".\asp-net-export-handler\." 1>nul 2>&1
echo.
echo Done!!!
pause