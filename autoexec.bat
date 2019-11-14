REM This is a simple Autoexec.bat, where the MENUITEM is translated into the label CONFIG:
@ECHO OFF PROMPT=$P$G
SET DIRCMD=/A/OGN/P

REM Uses the identifier from CONFIG.SYS to goto a label 
GOTO %CONFIG%

REM This is the label for the identifier DOS 
:DOS
LH C:\DOS\MSCDEX.EXE /D:CD1
LH C:\DOS\SMARTDRV.EXE 2048

REM The GOTO EXIT is required so it won't continue into 
REM the WIN configuration
GOTO EXIT

REM This is the label for the identifier WIN 
:WIN

REM The ECHO command writes a message on the DOS screen 
ECHO Starting Windows...

C:\WINDOWS\WIN

:EXIT
