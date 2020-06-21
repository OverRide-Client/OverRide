@Echo off
@Mode 30,15
@Title %~n0
Batbox /h 0

:Loop
Call Button  10 4 "Inject" 10 7 "GitHub" 10 10 " Exit " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (start "dlldata.bat")
if %errorlevel%==2 (start "" https://github.com/OverRide-Client/OverRide)
if %errorlevel%==3 (exit)
goto Loop