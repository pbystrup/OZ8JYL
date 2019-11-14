
@ECHO OFF

REM  A Remark or Comment line... Using double-colons (::) works OK too...

::   SAMPLE AUTOEXEC.BAT FILE
:: ===========================
::   See comments at:  /homestead/thestarman3/BootMenu.htm
:: =======================================================================

:: Set the PATH= statement to any folder(s) you wish that contain programs
:: you want to execute from a DOS prompt while in some other folder. If
:: more than one folder is to be included, then separate them with semi-
:: colons(;).

PATH=C:\;C:\PERL\BIN;C:\TEMP

:: Although the Windows OS automatically defaults to making the following
:: two folders part of the PATH statement, they won't be part of it if you
:: drop back into DOS; so I've added them to mine again (placing the word
:: PATH between percent symbols at the end of the line means: add the PATH
:: statement parameters from the line above into the PATH statement here).

PATH=C:\WINDOWS\COMMAND;C:\WINDOWS;%PATH%

:: A few other software and/or hardware settings might follow... such as:
SET TEMP=C:\WINDOWS\TEMP

:: A TIMEZONE statement used by some programs (DOS PGP, for example):
SET TZ=PST8PDT

:: This is specifically for my Sound Blaster sound card...
SET BLASTER=A220 I10 D1 H7 P330 T6

::  Any statements placed BEFORE the following GOTO-CONFIG statement will
:: apply to ALL the MENUITEM :Labels under it. (Think of the lines before
:: this as being COMMON to all the MENUITEMS in CONFIG.SYS)

GOTO %CONFIG%

:: NOTE: that the MENUITEM [Labels] from the CONFIG.SYS file begin with a
::       single colon (:) in this file!  Furthermore, they do not have to
::       be arranged in the same order they were listed in the CONFIG.SYS
::       file! The statements in a batch file are similar to those found
::       in a BASIC program; in fact, every statement in this file is a
::       PROGRAM statement executed by the DOS operating system.

:: ----------------------------------------------------------------------
:WIN
LH C:\WINDOWS\COMMAND\DOSKEY.COM
echo.
PAUSE
WIN.COM
GOTO END

:: ----------------------------------------------------------------------
:DOSDRVS
LH C:\WINDOWS\COMMAND\DOSKEY.COM

:: This is specifically for my CD-ROM drive (/L: sets the drive letter):
C:\WINDOWS\COMMAND\MSCDEX.EXE /D:MSCD001 /L:M /M:30

C:\WINDOWS\COMMAND\MOUSE.COM
PAUSE
:: Since I rarely use DOS at boot-up, I display the following to remind
:: myself of a few things when I do use it this way:
CLS
echo.
echo.
echo.
ECHO            You  are  now  ready  to  begin  your  DOS  session ...
echo.
ECHO            The _ mouse driver_  has been loaded, and you
echo.
ECHO            now have access to the CD-ROM drive as drive M
echo                                   ------------   =========
echo.
ECHO            You should REBOOT if you wish to begin a Windows session!
echo.
echo.
PAUSE
GOTO DONE

:: ----------------------------------------------------------------------
:RAMDRV
LH C:\WINDOWS\COMMAND\DOSKEY.COM

:DONE
PROMPT $e[0m
PROMPT $p$g
CLS

:: ----------------------------------------------------------------------
:DOSONLY

:END

