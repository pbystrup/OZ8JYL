ECHO OFF NC55, Ræv, PromBr32, Dos, Windows
CLS
:MENU
ECHO.
ECHO ............................................... 
ECHO PRESS 1, 2, 3, 4, 5 to select your task, or 6 to EXIT. 
ECHO ............................................... 
ECHO.
ECHO 1 - Start Norton Commander 5.5
ECHO 2 - Start Ræv Program
ECHO 3 - Start PromBr32
ECHO 4 - Start Dos
ECHO 5 - Start Windows 7
ECHO 6 - EXIT
ECHO.
SET /P M=Type
IF %M%==1 GOTO NC
IF %M%==2 GOTO Ræv
IF %M%==3 GOTO PromBr32
IF %M%==4 GOTO Dos 
IF %M%==5 GOTO Windows
IF %M%==6 GOTO EOF
:NC
cd NC551\nc.exe start nc.exe
GOTO MENU
:Ræv
cd Ræv\Ræv.exe start Ræv.exe
GOTO MENU
:PromBr32
cd PromBr32\PromBr32.exe start PromBr32.exe
GOTO MENU
:Dos
Command.com
GOTO MENU
:Windows
Win.exe
GOTO MENU
:EOF
Exit
