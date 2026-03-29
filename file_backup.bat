@echo off
for /f "tokens=1,2,3 delims=/ " %%a in ('date /t') do set xdate=%%c%%b%%a
for /f "tokens=1,2,3 delims=/ " %%a in ('time /t') do set xtime=%%a%%b

set timestamp=%xdate%_%xtime%
set dest=C:\Users\kelvi\Desktop\Logs

rem make folder directory
if not exist %dest% mkdir %dest%

echo ********************************>>%dest%\backup_log.log
echo Backup starting at %xtime% on %xdate%...>>%dest%\backup_log.log

echo Updating path...>>%dest%\backup_log.log
rem set path=C:\Users\kelvi\Desktop\Loggers;%path%
set path=C:\Users\kelvi\Desktop\Loggers

rem make new txt file and save
echo.>>%path%\file.txt

rem move file from one location to another
copy /Y %path%\file.txt %dest%\file.txt >nul

echo Backup completed.>>%dest%\backup_log.log

rem delete any files (.txt) in dest folder older than 90 days
forfiles /p %dest% /s /m *.txt /d -90 /c "cmd /c del @file >NUL"

echo Cleanup of old backups completed.>>%dest%\backup_log.log

echo Done.>>%dest%\backup_log.log
