@echo off
:menu
cls
echo ========================================
echo =  Multi-Functional Cache Cleaner	    
echo ========================================
echo [1] Clean Temporary Files              
echo [2] Clear Prefetch Files		    
echo [3] Delete Windows Update Cache	    
echo [4] Clear Browser Cache (Chrome/Edge)  
echo [5] Flush DNS and ARP Cache	    
echo [6] Clear Thumbnail Cache		    
echo [7] Clear Event Logs		    
echo [8] Clean All (Full System Clean)      
echo [9] Exit 				    
echo ========================================
set /p choice="Enter your choice: "

if "%choice%"=="1" goto temp
if "%choice%"=="2" goto prefetch
if "%choice%"=="3" goto update
if "%choice%"=="4" goto browser
if "%choice%"=="5" goto network
if "%choice%"=="6" goto thumbnails
if "%choice%"=="7" goto logs
if "%choice%"=="8" goto cleanall
if "%choice%"=="9" goto exit

echo Invalid choice! Please try again.
pause
goto menu

:temp
echo Cleaning Temporary Files...
del /s /q %temp%\* >nul 2>&1
for /d %%i in (%temp%\*) do rd /s /q "%%i" >nul 2>&1
echo Temporary files cleaned!
pause
goto menu

:prefetch
echo Cleaning Prefetch Files...
rd /s /q C:\Windows\Prefetch >nul 2>&1
echo Prefetch files cleaned!
pause
goto menu

:update
echo Stopping Windows Update service...
net stop wuauserv >nul 2>&1
echo Deleting Windows Update Cache...
rd /s /q C:\Windows\SoftwareDistribution\Download >nul 2>&1
echo Restarting Windows Update service...
net start wuauserv >nul 2>&1
echo Windows Update cache cleaned!
pause
goto menu

:browser
echo Clearing Browser Cache...
rd /s /q "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Cache" >nul 2>&1
rd /s /q "%userprofile%\AppData\Local\Microsoft\Edge\User Data\Default\Cache" >nul 2>&1
echo Browser cache cleaned!
pause
goto menu

:network
echo Flushing DNS Cache...
ipconfig /flushdns >nul
echo Flushing ARP Cache...
arp -d * >nul
echo DNS and ARP cache cleaned!
pause
goto menu

:thumbnails
echo Deleting Thumbnail Cache...
del /s /q %systemroot%\Explorer\thumbcache_* >nul 2>&1
echo Thumbnail cache cleaned!
pause
goto menu

:logs
echo Clearing Event Logs...
for /f "tokens=*" %%a in ('wevtutil el') do wevtutil cl "%%a" >nul 2>&1
echo Event logs cleared!
pause
goto menu

:cleanall
echo Performing Full System Clean...
call :temp
call :prefetch
call :update
call :browser
call :network
call :thumbnails
call :logs
echo All caches cleaned!
pause
goto menu

:exit
echo Exiting Cache Cleaner. Goodbye!
pause
exit
