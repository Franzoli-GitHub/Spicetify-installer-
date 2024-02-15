@echo off
set /p userInput= Do you have spicetify? (yes / no (CASE SENSITIVE) ):
if "%userInput%"== "yes" (
     echo Self fix Mode
) else if "%userInput%"== "no" (
    color 01
    echo Installing spicetify!
    echo ██████  ██    ██      ██████  ██████  ██      ██ ███████ ██       ██████  ██     ██ ███████ ██████  
    echo ██   ██  ██  ██      ██      ██    ██ ██      ██ ██      ██      ██    ██ ██     ██ ██      ██   ██ 
    echo ██████    ████       ██      ██    ██ ██      ██ █████   ██      ██    ██ ██  █  ██ █████   ██████  
    echo ██   ██    ██        ██      ██    ██ ██      ██ ██      ██      ██    ██ ██ ███ ██ ██      ██   ██ 
    echo ██████     ██         ██████  ██████  ███████ ██ ██      ███████  ██████   ███ ███  ███████ ██   ██
    timeout /t 2 /nobreak
    powershell -command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex"
    powershell -command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1 | iex"
    echo Done installing! 
   echo Completed Self Cleaning Now!
   timeout /t 2 /nobreak
   Taskkill /F /IM Spotify.exe
   Taskkill /F /IM cmd.exe
) else (
 echo invalid command
 timeout /t 1 /nobreak
 pause
 exit
)
pause
color 01
echo ██████  ██    ██      ██████  ██████  ██      ██ ███████ ██       ██████  ██     ██ ███████ ██████  
echo ██   ██  ██  ██      ██      ██    ██ ██      ██ ██      ██      ██    ██ ██     ██ ██      ██   ██ 
echo ██████    ████       ██      ██    ██ ██      ██ █████   ██      ██    ██ ██  █  ██ █████   ██████  
echo ██   ██    ██        ██      ██    ██ ██      ██ ██      ██      ██    ██ ██ ███ ██ ██      ██   ██ 
echo ██████     ██         ██████  ██████  ███████ ██ ██      ███████  ██████   ███ ███  ███████ ██   ██
echo This will will fix spicetify
timeout /t 2 /nobreak                                                                                                                                                                                                                                                                                                                                                                                                             
powershell -command spicetify upgrade
powershell -command spicetify backup
powershell -command spicetify backup apply
powershell -command spicetify restore backup apply
Taskkill /F /IM Spotify.exe
Taskkill /F /IM spotify.exe
cls
timeout /t 2 /nobreak
Taskkill /F /IM cmd.exe

