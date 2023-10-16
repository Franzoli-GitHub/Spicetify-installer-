@echo off
set /p userInput= Do you have spicetify? (Yes/No):
if "%userInput%"== "Yes" (
     echo Self fix Mode
) else if "%userInput%"== "No" (
    color 01
    echo Installing spicetify!
    echo ██████  ██    ██      ██████  ██████  ██      ██ ███████ ██       ██████  ██     ██ ███████ ██████  
    echo ██   ██  ██  ██      ██      ██    ██ ██      ██ ██      ██      ██    ██ ██     ██ ██      ██   ██ 
    echo ██████    ████       ██      ██    ██ ██      ██ █████   ██      ██    ██ ██  █  ██ █████   ██████  
    echo ██   ██    ██        ██      ██    ██ ██      ██ ██      ██      ██    ██ ██ ███ ██ ██      ██   ██ 
    echo ██████     ██         ██████  ██████  ███████ ██ ██      ███████  ██████   ███ ███  ███████ ██   ██
    timeout /t 5 /nobreak
    powershell -command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex"
    powershell -command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1 | iex"
    echo Done installing! 
   echo Completed Self Cleaning Now!
   timeout /t 6 /nobreak
   Taskkill /F /IM Spotify.exe
   Taskkill /F /IM spotify.exe
   Taskkill /F /IM cmd.exe
) else (
 echo invalid command
 timeout /t 5 /nobreak
 exit
)
pause
color 2
echo ██████  ██    ██      ██████  ██████  ██      ██ ███████ ██       ██████  ██     ██ ███████ ██████  
echo ██   ██  ██  ██      ██      ██    ██ ██      ██ ██      ██      ██    ██ ██     ██ ██      ██   ██ 
echo ██████    ████       ██      ██    ██ ██      ██ █████   ██      ██    ██ ██  █  ██ █████   ██████  
echo ██   ██    ██        ██      ██    ██ ██      ██ ██      ██      ██    ██ ██ ███ ██ ██      ██   ██ 
echo ██████     ██         ██████  ██████  ███████ ██ ██      ███████  ██████   ███ ███  ███████ ██   ██
echo This will update and use a backup of spicetify 
timeout /t 5 /nobreak                                                                                                                                                                                                                                                                                                                                                                                                             
powershell -command spicetify upgrade
powershell -command spicetify backup
powershell -command spicetify backup apply
powershell -command spicetify restore backup apply
Taskkill /F /IM Spotify.exe
Taskkill /F /IM spotify.exe
cls
echo Completed Self Cleaning Now!
timeout /t 5 /nobreak
Taskkill /F /IM cmd.exe

