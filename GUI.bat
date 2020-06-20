@off
title Psycho Client
color 0a

echo Welcome, %username%.
echo We are currently setting up the files, so please wait for this to be completed.

echo.

: the breaks are temporary until it actually needs to create files just to make it feel
: more authentic

echo [LOGS] [%TIME%] Creating files
TIMEOUT /T 2 /NOBREAK>NUL
echo [LOGS] [%TIME%] Addding data
TIMEOUT /T 2 /NOBREAK>NUL
echo [LOGS] [%TIME%] Checking for past save data
TIMEOUT /T 2 /NOBREAK>NUL

cls

::: ______ ________ ________ ______ ________
:::| HOME | PLAYER | COMBAT | MISC | VISUAL |
:::|      |________|________|______|________|____________
:::|                                                     |
:::| Welcome to Psycho Client, This client was built-    |
:::| as if its all made in the terminal, even though-    |
:::| these are all actually GUI's.                       |
:::|                                                     |
:::|                                                     |
:::|                                                     |
:::|________ ___________________ ________________________|
:::| INJECT | GO TO OUR WEBSITE | ENTER HELP TO GET HELP |
:::|________|___________________|________________________|

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

:CMDLine
echo.
set /p cmdhelp=CMD: 
if /i "%cmdhelp%" neq "help" goto help
if /i "%cmdhelp%" neq "Help" goto help
if /i "%cmdhelp%" neq "HELP" goto help

:help
cls

cat << "EOF"
 ______ ______ ________ ________ ______ ________ 
| HELP | HOME | PLAYER | COMBAT | MISC | VISUAL |
|      |______|________|________|______|________|_____
|                                                     |
| You can to a tab by typing: goto [tab name]         |
| You can exacute a hack by typing: exa [hack name]   |
| You can turn on click gui mode by typing: click     |
|                                                     |
|                                                     |
|                                                     |
|________ ___________________ ________________________|
| INJECT | GO TO OUR WEBSITE | ENTER HELP TO GET HELP |
|________|___________________|________________________|
EOF

goto CMDLine

:exit
pause
exit