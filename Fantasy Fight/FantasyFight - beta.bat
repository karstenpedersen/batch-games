@echo off
title FantasyFight
color 0a
mode 1000

::stats
set php=100
set p1hp=100
set p2hp=100
set pmana=50
set pexpdust=100
set pexp=1
set money=600
set chp=5
set cmp=5
set classicbathp=100
set classicsnakehp=100
set classicorkhp=100
set clasicCknighthp=100

:startup
cls
echo ออออออออออออออออออออออออออ
echo Press 1 start game
echo Press a exit
echo ออออออออออออออออออออออออออ
set /p menu=
if %menu% == 1 goto new
if %menu% == a exit
goto startup

:new
cls
echo ออออออออออออออออออออออออออ
echo.
echo.
set /p name=type the name you want:
echo.
goto new1

:new1
cls
echo ออออออออออออออออออออออออออ
echo.
echo this is your name %name%
echo.
echo ออออออออออออออออออออออออออ
pause
goto infomenu

:infomenu
cls
echo ออออออออออออออออออออออออออออออออออออออออออ
echo บ                                        บ 
echo บ              FANTASY FIGHT             บ 
echo บ                                        บ 
echo บ                                        บ 
echo บ Created by PopcornPro         BetaV0.1 บ
echo บ                                        บ
echo ออออออออออออออออออออออออออออออออออออออออออ
pause
goto menu

:menu
cls
echo บอออออออออออออออออออออออออออออออบ
echo บ      FANTASY FIGHT - BETA     บ
echo บอออออออออออออออออออออออออออออออบ
echo บPlayer %name%  MENU            บ
echo บอออออออออออออออออออออออออออออออบ
echo บ       Press 1 play            บ 
echo บ                               บ 
echo บ       Press a exit            บ 
echo บ       Press b contact me      บ  
echo บ                               บ             
echo อออออออออออออออออออออออออออออออออ
set /p menu=
if %menu% == 1 goto classicmode1
if %menu% == a exit
if %menu% == b goto contactme
goto menu

:contactme
cls
echo บออออออออออออออออออออออออออออออออบ                              
echo บ you can report a error in the  บ  
echo บ game to me on these medias     บ 
echo บ                                บ
echo บ you can also see more info     บ
echo บ about the game on twitter      บ
echo บออออออออออออออออออออออออออออออออบ  
echo บ                                บ  
echo บ Press 1 go to my Twitter       บ  
echo บ                                บ  
echo บ Press 2 see my Gmail           บ  
echo บ                                บ
echo บ Press a go back to menu        บ
echo บ                                บ  
echo บออออออออออออออออออออออออออออออออบ
set /p media=
if %media% == 1 goto twitter
if %media% == 2 goto gmail
if %media% == 3 goto menu

:twitter
start iexplore.exe http://twitter.com/1PopcornProYT

:gmail
cls
echo บออออออออออออออออออออออออออออออบ
echo บ                              บ
echo บ Gmail:karstenp2003@gmail.com บ
echo บ                              บ
echo บ Press 1 go to menu           บ
echo บ                              บ
echo บออออออออออออออออออออออออออออออบ
set /p gmail=
if %gmail% == 1 goto menu

:classicmode1
set /a mob=%random% %%3 +1  
if %mob% EQU 1 goto classicbat
if %mob% EQU 2 goto classicsnake
if %mob% EQU 3 goto classicork

:classicbat
cls
if %php% leq 0 goto classicloss
if %classicbathp% leq 0 goto classicwin
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ Player %name% Hp %php% Level %exp%     VS     Monster bat Hp %classicbathp% บ
echo.บ armor %maxarmor%                                                            บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo.บ                                                                             บ
echo บ           YOU                                                               บ
echo.บ                                                                             บ
echo บ          (O_O)                                \ (O-o) /                     บ
echo บ           /I\                                  \ ___ /                      บ
echo บ          / I \                                  I   I                       บ
echo บ           / \                                                               บ
echo บ          /   \                                                              บ                                                 
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ    ATTACKS                                                                  บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo Press 1 for punch
echo press 2 for kick
set /p menu=
if %menu% == 1 goto batclassicpunch
if %menu% == 2 goto batclassickick
goto classicbat

:batclassicpunch
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto batclassicpunch1
if %snakecp% EQU 2 goto batclassicpunch2
if %snakecp% EQU 3 goto batclassicpunch3
:batclassicpunch1
set /a classicbathp=%classicbathp%-%Random% %%10-5%
goto classicbatattack
:batclassicpunch2
set /a classicbathp=%classicbathp%-%Random% %%13-3%
goto classicbatattack
:batclassicpunch3
set /a classicbathp=%classicbathp%-%Random% %%10-5%
goto classicbatattack

:batclassickick
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto batclassickick1
if %snakecp% EQU 2 goto batclassickick2
if %snakecp% EQU 3 goto batclassickick3
:batclassickick1
set /a classicbathp=%classicbathp%-%Random% %%16-10%
goto classicbatattack
:batclassickick2
set /a classicbathp=%classicbathp%-%Random% %%7-2%
goto classicbatattack
:batclassickick3
set /a classicbathp=%classicbathp%-%Random% %%19-8%
goto classicbatattack

:classicbatattack
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto classicbatattack1
if %snakecp% EQU 2 goto classicbatattack2
if %snakecp% EQU 3 goto classicbatattack3
:classicbatattack1
set /a php=%php%-%Random% %%3-2%
goto classicbat
:classicbatattack2
set /a php=%php%-%Random% %%10-7%
goto classicbat
:classicbatattack3
set /a php=%php%-%Random% %%13-7%
goto classicbat

:classicsnake
cls
if %php% leq 0 goto classicloss
if %classicsnakehp% leq 0 goto classicwin
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ Player %name% Hp %php% Level %exp%   VS   Monster snake Hp %classicsnakehp% บ
echo.บ                                                           บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo.บ                                                                             บ
echo บ           YOU                                                               บ
echo.บ                                                                             บ
echo บ          (O_O)                                                              บ
echo บ           /I\                                                               บ
echo บ          / I \            =('_)           //                                บ
echo บ           / \               \  \________/ /                                 บ
echo บ          /   \               \___________/                                  บ                                                
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ    ATTACKS                                                                  บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo Press 1 for punch
echo press 2 for kick
set /p menu=
if %menu% == 1 goto snakeclassicpunch
if %menu% == 2 goto snakeclassickick
goto classicsnake

:snakeclassicpunch
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto snakeclassicpunch1
if %snakecp% EQU 2 goto snakeclassicpunch2
if %snakecp% EQU 3 goto snakeclassicpunch3
:snakeclassicpunch1
set /a classicsnakehp=%classicsnakehp%-%Random% %%18-5%
goto classicsnakeattack
:snakeclassicpunch2
set /a classicsnakehp=%classicsnakehp%-%Random% %%18-10%
goto classicsnakeattack
:snakeclassicpunch3
set /a classicsnakehp=%classicsnakehp%-%Random% %%3-2%
goto classicsnakeattack

:snakeclassickick
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto snakeclassickick1
if %snakecp% EQU 2 goto snakeclassickick2
if %snakecp% EQU 3 goto snakeclassickick3
:snakeclassickick1
set /a classicsnakehp=%classicsnakehp%-%Random% %%10-5%
goto classicsnakeattack
:snakeclassickick2
set /a classicsnakehp=%classicsnakehp%-%Random% %%18-3%
goto classicsnakeattack
:snakeclassickick3
set /a classicsnakehp=%classicsnakehp%-%Random% %%20-8%
goto classicsnakeattack

:classicsnakeattack
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto classicsnakeattack1
if %snakecp% EQU 2 goto classicsnakeattack2
if %snakecp% EQU 3 goto classicsnakeattack3
:classicsnakeattack1
set /a php=%php%-%Random% %%16-2%
goto classicsnake
:classicsnakeattack2
set /a php=%php%-%Random% %%16-7%
goto classicsnake
:classicsnakeattack3
set /a php=%php%-%Random% %%19-7%
goto classicsnake

:classicork
cls
if %php% leq 0 goto classicloss
if %classicorkhp% leq 0 goto classicwin
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ Player %name% Hp %php% Level %exp%    VS    Monster ork Hp %classicorkhp%   บ
echo.บ armor %maxarmor%                                                            บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo.บ                                                                             บ
echo บ           YOU                     (0;0)                                     บ
echo.บ                                 /======\                                    บ
echo บ          (O_O)                 //(    )\\                                   บ
echo บ           /I\                  / (____) \\                                  บ
echo บ          / I \                  ()    ()                                    บ
echo บ           / \                  ()      ()                                   บ
echo บ          /   \               (   )    (   )                                 บ                                                 
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ    ATTACKS                                                                  บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo Press 1 for punch
echo press 2 for kick
set /p menu=
if %menu% == 1 goto orkclassicpunch
if %menu% == 2 goto orkclassickick
goto classicork

:orkclassicpunch
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto orkclassickick1
if %snakecp% EQU 2 goto orkclassickick2
if %snakecp% EQU 3 goto orkclassickick3
:orkclassicpunch1
set /a classicorkhp=%classicorkhp%-%Random% %%17-10%
goto classicorkattack
:orkclassicpunch2
set /a classicorkhp=%classicorkhp%-%Random% %%27-8%
goto classicorkattack
:orkclassicpunch3
set /a classicorkhp=%classicorkhp%-%Random% %%19-10%
goto classicorkattack

:orkclassickick
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto orkclassickick1
if %snakecp% EQU 2 goto orkclassickick2
if %snakecp% EQU 3 goto orkclassickick3
:orkclassickick1
set /a classicorkhp=%classicorkhp%-%Random% %%10-5%
goto classicorkattack
:orkclassickick2
set /a classicorkhp=%classicorkhp%-%Random% %%10-5%
goto classicorkattack
:orkclassickick3
set /a classicorkhp=%classicorkhp%-%Random% %%10-5%
goto classicorkattack

:classicorkattack
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto classicorkattack1
if %snakecp% EQU 2 goto classicorkattack2
if %snakecp% EQU 3 goto classicorkattack3
:classicorkattack1
set /a php=%php%-%Random% %%16-2%
goto classicork
:classicorkattack2
set /a php=%php%-%Random% %%16-7%
goto classicork
:classicorkattack3
set /a php=%php%-%Random% %%19-7%
goto classicork

:classicwin
set php=100
set classicbathp=100
set classicsnakehp=100
set classicorkhp=100
echo บออออออออออออออออออออบ
echo บ                    บ
echo บ       YOU WON      บ 
echo บ                    บ
echo บ Press 1 play again บ
echo บ Press 2 go to menu บ
echo บออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto classicmode1
if %menu% == 2 goto menu
goto classicwin

:classicloss
set php=100
set classicbathp=100
set classicsnakehp=100
set classicorkhp=100
echo บออออออออออออออออออออบ
echo บ                    บ
echo บ      YOU DIED      บ 
echo บ                    บ
echo บ Press 1 go to menu บ
echo บออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto menu
goto classicloss