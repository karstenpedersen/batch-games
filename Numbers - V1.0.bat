@echo off
title Numbers
color 0a
mode 1000

::stats
set coins=1000
set level=1

:version
cls
echo ออออออออออออออออออออออออออออออออออออออออออ
echo บ                                        บ 
echo บ               Small games              บ 
echo บ                                        บ 
echo บ                                        บ 
echo บ Created by PopcornPro             V1.0 บ
echo บ                                        บ
echo ออออออออออออออออออออออออออออออออออออออออออ
pause
goto menuscreen

:menuscreen
cls
echo ออออออออออออออออออออออออออออออออออออออออออ
echo บ             Small minigames            บ 
echo ออออออออออออออออออออออออออออออออออออออออออ
echo บ                                        บ 
echo บ Press 1 Play Numbers                   บ 
echo บ Press 2                                บ 
echo บ                                        บ 
echo บ                                        บ 
echo บ Press a exit                           บ 
echo บ Press b random numbers                 บ 
echo บ Press c see your stats                 บ
echo ออออออออออออออออออออออออออออออออออออออออออ
set /p menu=
if %menu% == 1 goto numbers
if %menu% == 2 goto 
if %menu% == a exit
if %menu% == b goto metrix
if %menu% == c goto stats
goto menuscreen

:stats
cls
echo ออออออออออออออออออออออออออออออออออออออออออ
echo บ                  Stats                 บ 
echo ออออออออออออออออออออออออออออออออออออออออออ
echo บ Score: %score%                         บ 
echo บ Coins: %coins%                         บ 
echo บ Level: %level%                         บ
echo.
echo   Press a go back
echo. 
echo ออออออออออออออออออออออออออออออออออออออออออ 
set /p menu=
if %menu% == a goto menuscreen

:metrix
cls
echo start metrix
pause
goto metrixloop

:metrixloop
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
goto metrixloop

:numbers
cls
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ               NUMBERS                     บ 
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ                                           บ 
echo บ Press 1 Super easy: number between 1-50   บ 
echo บ                                           บ 
echo บ Press 2 Easy: number between 1-100        บ 
echo บ                                           บ 
echo บ Press 3 Normal: number between 1-250      บ
echo บ                                           บ
echo บ Press 4 Hard: number between 1-500        บ
echo บ                                           บ
echo บ Press 5 Super hard: number between 1-1500 บ
echo บ                                           บ 
echo บ Press a go back to menu                   บ
echo บ Press b to see stats in Numbers           บ
echo บ                                           บ
echo อออออออออออออออออออออออออออออออออออออออออออออ
set /p press=
if %press% == 1 goto supereasy
if %press% == 2 goto easy
if %press% == 3 goto normal
if %press% == 4 goto hard
if %press% == 5 goto superhard
if %press% == a goto menuscreen
if %press% == a goto numberstats

:numberstats
cls
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ                   Stats                   บ
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ                                           บ
echo บ tries in total %quess%                    บ
echo บ                                           บ
echo บ the last number was %num%                 บ
echo บ                                           บ
echo บ Press a go back                           บ
echo บ                                           บ
echo อออออออออออออออออออออออออออออออออออออออออออออ
set /p menu=
if %menu% == a goto numbers

:supereasy
cls
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ                 Super easy                บ
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ                                           บ
echo บ                    1-50                   บ
echo บ               อออออออออออออออ             บ
echo บ                                           บ
echo อออออออออออออออออออออออออออออออออออออออออออออ

:supereasynumset
set /a quess=1
set /a num=%random%*50/32767+1

:supereasyg
set /p an=
if %an% LSS 1 goto semoron
if %an% GTR 50 goto semoron
if %an% LSS %num% goto sehigersu
if %an% GTR %num% goto selowersu
if %an% EQU %num% goto end
goto supereasy

:sehigersu
cls
echo ออออออออออออ
echo บ          บ
echo บ Higer!!! บ
echo บ          บ
echo ออออออออออออ
set /a quess=%quess%+1
goto supereasyg

:selowersu
cls
echo ออออออออออออ
echo บ          บ
echo บ Lower!!! บ
echo บ          บ
echo ออออออออออออ
set /a quess=%quess%+1
goto supereasyg

:easy
cls
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ                    Easy                   บ
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ                                           บ
echo บ                     1-100                 บ
echo บ               อออออออออออออออ             บ
echo บ                                           บ
echo อออออออออออออออออออออออออออออออออออออออออออออ

:easynumset
set /a quess=1
set /a num=%random%*99/32767+1

:easyg
set /p an=
if %an% LSS 1 goto emorone
if %an% GTR 100 goto emorone
if %an% LSS %num% goto ehigersu
if %an% GTR %num% goto elowersu
if %an% EQU %num% goto end
goto easy

:ehigersu
cls
echo ออออออออออออ
echo บ          บ
echo บ Higer!!! บ
echo บ          บ
echo ออออออออออออ
set /a quess=%quess%+1
goto easyg

:elowersu
cls
echo ออออออออออออ
echo บ          บ
echo บ Lower!!! บ
echo บ          บ
echo ออออออออออออ
set /a quess=%quess%+1
goto easyg

:normal
cls
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ                    Normal                 บ
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ                                           บ
echo บ                     1-250                 บ
echo บ               อออออออออออออออ             บ
echo บ                                           บ
echo อออออออออออออออออออออออออออออออออออออออออออออ

:normalnumset
set /a quess=1
set /a num=%random%*249/32767+1

:normalg
set /p an=
if %an% LSS 1 goto nmorone
if %an% GTR 250 goto nmorone
if %an% LSS %num% goto nhigersu
if %an% GTR %num% goto nlowersu
if %an% EQU %num% goto end
goto easy

:nhigersu
cls
echo ออออออออออออ
echo บ          บ
echo บ Higer!!! บ
echo บ          บ
echo ออออออออออออ
set /a quess=%quess%+1
goto normalg

:nlowersu
cls
echo ออออออออออออ
echo บ          บ
echo บ Lower!!! บ
echo บ          บ
echo ออออออออออออ
set /a quess=%quess%+1
goto normalg

:end
cls
set /a coins=%coins%+10
set /a level=%level%+1
echo อออออออออออออออออออออออออออออออออออออออออออออ
echo บ                                           บ
echo บ                  YOU WIN                  บ
echo บ            THE NUMBER WAS %NUM%           บ
echo บ                                           บ
echo บ            it took you %quess% tries      บ
echo บ                                           บ
echo อออออออออออออออออออออออออออออออออออออออออออออ
pause
goto :blah



:blah
goto menuscreen


