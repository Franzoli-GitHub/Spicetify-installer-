@echo off
set /p userInput= Do you have spicetify?(CASE SENSITIVE) (Yes/No):
if /I "%userInput%"== "Yes" (
     echo Self fix Mode
     Taskkill /F /IM spotify.exe
) else if "%userInput%"== "No" (
    color 01
    echo Installing spicetify
    timeout /t 5 /nobreak
    Echo Y | powershell -command "iwr -useb https://raw.githubusercontent.com/spicetify/cli/main/install.ps1 | iex"
    powershell -command "iwr -useb https://raw.githubusercontent.com/spicetify/marketplace/main/resources/install.ps1 | iex"
    Start C:\Users\%USERNAME%\AppData\Roaming\Spotify\Spotify.exe
    echo Done installing! 
   echo Completed Self Cleaning Now!
   timeout /t 6 /nobreak
   Taskkill /F /IM Spotify.exe
   Taskkill /F /IM spotify.exe
   timeout /t 6 /nobreak
   Start C:\Users\%USERNAME%\AppData\Roaming\Spotify\Spotify.exe
   Taskkill /F /IM cmd.exe
) else (
 echo invalid command
 timeout /t 2 /nobreak
 exit
)
pause
color 2
echo This will update and use a backup of spicetify 
timeout /t 2 /nobreak                                                                                                                                                                                                                                                                                                                                                                                                             
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
