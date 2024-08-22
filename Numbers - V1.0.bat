@echo off
title Numbers
color 0a
mode 1000

::stats
set coins=1000
set level=1

:version
cls
echo ������������������������������������������
echo �                                        � 
echo �               Small games              � 
echo �                                        � 
echo �                                        � 
echo � Created by PopcornPro             V1.0 �
echo �                                        �
echo ������������������������������������������
pause
goto menuscreen

:menuscreen
cls
echo ������������������������������������������
echo �             Small minigames            � 
echo ������������������������������������������
echo �                                        � 
echo � Press 1 Play Numbers                   � 
echo � Press 2                                � 
echo �                                        � 
echo �                                        � 
echo � Press a exit                           � 
echo � Press b random numbers                 � 
echo � Press c see your stats                 �
echo ������������������������������������������
set /p menu=
if %menu% == 1 goto numbers
if %menu% == 2 goto 
if %menu% == a exit
if %menu% == b goto metrix
if %menu% == c goto stats
goto menuscreen

:stats
cls
echo ������������������������������������������
echo �                  Stats                 � 
echo ������������������������������������������
echo � Score: %score%                         � 
echo � Coins: %coins%                         � 
echo � Level: %level%                         �
echo.
echo   Press a go back
echo. 
echo ������������������������������������������ 
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
echo ���������������������������������������������
echo �               NUMBERS                     � 
echo ���������������������������������������������
echo �                                           � 
echo � Press 1 Super easy: number between 1-50   � 
echo �                                           � 
echo � Press 2 Easy: number between 1-100        � 
echo �                                           � 
echo � Press 3 Normal: number between 1-250      �
echo �                                           �
echo � Press 4 Hard: number between 1-500        �
echo �                                           �
echo � Press 5 Super hard: number between 1-1500 �
echo �                                           � 
echo � Press a go back to menu                   �
echo � Press b to see stats in Numbers           �
echo �                                           �
echo ���������������������������������������������
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
echo ���������������������������������������������
echo �                   Stats                   �
echo ���������������������������������������������
echo �                                           �
echo � tries in total %quess%                    �
echo �                                           �
echo � the last number was %num%                 �
echo �                                           �
echo � Press a go back                           �
echo �                                           �
echo ���������������������������������������������
set /p menu=
if %menu% == a goto numbers

:supereasy
cls
echo ���������������������������������������������
echo �                 Super easy                �
echo ���������������������������������������������
echo �                                           �
echo �                    1-50                   �
echo �               ���������������             �
echo �                                           �
echo ���������������������������������������������

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
echo ������������
echo �          �
echo � Higer!!! �
echo �          �
echo ������������
set /a quess=%quess%+1
goto supereasyg

:selowersu
cls
echo ������������
echo �          �
echo � Lower!!! �
echo �          �
echo ������������
set /a quess=%quess%+1
goto supereasyg

:easy
cls
echo ���������������������������������������������
echo �                    Easy                   �
echo ���������������������������������������������
echo �                                           �
echo �                     1-100                 �
echo �               ���������������             �
echo �                                           �
echo ���������������������������������������������

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
echo ������������
echo �          �
echo � Higer!!! �
echo �          �
echo ������������
set /a quess=%quess%+1
goto easyg

:elowersu
cls
echo ������������
echo �          �
echo � Lower!!! �
echo �          �
echo ������������
set /a quess=%quess%+1
goto easyg

:normal
cls
echo ���������������������������������������������
echo �                    Normal                 �
echo ���������������������������������������������
echo �                                           �
echo �                     1-250                 �
echo �               ���������������             �
echo �                                           �
echo ���������������������������������������������

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
echo ������������
echo �          �
echo � Higer!!! �
echo �          �
echo ������������
set /a quess=%quess%+1
goto normalg

:nlowersu
cls
echo ������������
echo �          �
echo � Lower!!! �
echo �          �
echo ������������
set /a quess=%quess%+1
goto normalg

:end
cls
set /a coins=%coins%+10
set /a level=%level%+1
echo ���������������������������������������������
echo �                                           �
echo �                  YOU WIN                  �
echo �            THE NUMBER WAS %NUM%           �
echo �                                           �
echo �            it took you %quess% tries      �
echo �                                           �
echo ���������������������������������������������
pause
goto :blah



:blah
goto menuscreen


