@echo off
color 0a
cd ..
echo Friday Night Jammin' [v1.0]
echo @VDK June 9th 2023
echo
echo BUILDING GAME...
echo.
lime build windows -release
echo.
echo done.
pause
pwd
explorer.exe export\release\windows\bin