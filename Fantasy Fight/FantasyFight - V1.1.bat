@echo off
title KingdomsQuest
color 0a
mode 1000

::stats
set php=100
set kills=0
set p1hp=50
set p2hp=50
set doghp=25
set dogexp=1
set doghappyorsad=100
set doghunger
set dogfood=10
set pmana=50
set pexpdust=100
set pexp=1
set money=10000
set chp=5
set cmp=5
set classicbathp=100
set classicsnakehp=100
set classicorkhp=100
set clasicCknighthp=100

::shop
set fb=n
set fw=n
set stoneswordstatus=n
set copperswordstatus=n
set ironswordstatus=n
set goldswordstatus=n
set housestatus=n
set dogstatus=n
set dogname=n
set doghealingpotion=n

::person
set knight=n
set wizard=n
set ork=n

:startup
cls
echo ออออออออออออออออออออออออออ
echo Press 1 start new game
echo Press 2 load a saved game
echo Press a exit
echo ออออออออออออออออออออออออออ
set /p menu=
if %menu% == 1 goto new
if %menu% == 2 goto infomenuload
if %menu% == a exit
goto startup

:new
cls
echo ออออออออออออออออออออออออออ
echo.
echo.
set /p name=type the name you want:
echo.
echo. 
set /p pass=type the password you want:
goto new1

:new1
cls
echo ออออออออออออออออออออออออออ
echo.
echo this is your name %name%
echo.
echo this is your password %pass%
echo
echo ออออออออออออออออออออออออออ
pause
goto infomenunew

:infomenunew
cls
echo ออออออออออออออออออออออออออออออออออออออออออ
echo บ                                        บ 
echo บ              FANTASY FIGHT             บ 
echo บ                                        บ 
echo บ                                        บ 
echo บ Created by PopcornPro             V1.1 บ
echo บ                                        บ
echo ออออออออออออออออออออออออออออออออออออออออออ
pause
goto save

:infomenuload
cls
echo ออออออออออออออออออออออออออออออออออออออออออ
echo บ                                        บ 
echo บ              FANTASY FIGHT             บ 
echo บ                                        บ 
echo บ                                        บ 
echo บ Created by PopcornPro             V1.1 บ
echo บ                                        บ
echo ออออออออออออออออออออออออออออออออออออออออออ
pause
goto load

:save
(
echo %pass%
echo %name%
echo %pmana%
echo %pexpdust%
echo %pexp%
echo %money%
echo %chp%
echo %cmp%
echo %stoneswordstatus%
echo %copperswordstatus%
echo %ironswordstatus=n%
echo %goldswordstatus%
echo %doghp%
echo %dogexp%
echo %doghappyorsad%
echo %doghunger%
echo %dogname%
echo %doghealingpotion%
echo %dogfood%
)>FantasyFightV1.0Data.dlb
goto menu

:load 
(
set /p pass=
set /p name=
set /p pmana=
set /p pexpdust=
set /p pexp=
set /p money=
set /p chp=
set /p cmp=
set /p stoneswordstatus=
set /p copperswordstatus=
set /p ironswordstatus=
set /p goldswordstatus=
set /p doghp=
set /p dogexp=
set /p doghappyorsad=
set /p doghunger=
set /p dogname=
set /p doghealingpotion=
set /p dogfood=
)<FantasyFightV1.0Data.dlb
goto menu

:menu
cls
echo บอออออออออออออออออออออออออออออออบ
echo บ      FANTASY FIGHT - V1.0     บ
echo บอออออออออออออออออออออออออออออออบ
echo บPlayer %name%  MENU Level %pexp%บ
echo บอออออออออออออออออออออออออออออออบ
echo บ       Press 1 play            บ
echo บ       Press 2 multiplayer     บ
echo บ       Press 3 shop            บ 
echo บ       Press 4 stats           บ
echo บ                               บ 
echo บ       Press a exit            บ 
echo บ       Press b contact me      บ  
if %dogstatus% EQU active echo บ Press c see your dog                       บ  
echo บ                               บ          
echo อออออออออออออออออออออออออออออออออ
set /p menu=
if %menu% == 1 goto classicmode1
if %menu% == 2 goto multiplayermode1
if %menu% == 3 goto shop
if %menu% == 4 goto stats 
if %menu% == a exit
if %menu% == b goto contactme
if %menu% == c goto doghouse
goto menu

:doghouse
cls
echo บออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ DOG                                                                                                    บ
echo บออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ                                      บ
echo บ Press 1 see dog info                                          อออออออออออออออออDOG STATUSออออออออออออออบ   
echo บ Press 2 feed your dog                                         /// name: %dogname%                   ///บ
echo บ Press 3 go with your dog                                      /// hp: %doghp%                       ///บ
echo บ Press a go to menu                                            /// level: %dogexp%                   ///บ
echo บ                                                               ///                                   ///บ
echo บ          Your DOG     WOW       YOU                           /// you have %dogfood% dog food       ///บ
echo บ                     WOW        [O_O]                          ///                                   ///บ
echo บ                ( O)=            /I\                           ///                                   ///บ
echo บ        /(((((((I               / I \                          ///                                   ///บ
echo บ       / ========                / \                           /// how happy is your dog %doghappyorsad%/100  ///บ
echo บ         I      I               /   \                          /// how hungry your dog are %doghunger%/100              ///บ
echo บออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
set /p press=
if %press% == 1 goto doginfopage
if %press% == 2 goto feeddog
if %press% == 3 goto doggo
if %press% == a goto save
goto doghouse

:doginfopage
cls
echo ออออออออออออออออออออออออออออออออออ
echo บ your dog can be use in fights  บ
echo บ your dog attacks to times in a บ                          
echo บ attack                         บ
echo บ                                บ
echo บ Press a go back                บ
echo บ                                บ
echo ออออออออออออออออออออออออออออออออออ
set /p menu=
if %menu% == a goto doghouse
goto doginfopage

:feeddog
if %dogfood% lss 1 goto feeddog3
set /a dogfood=%dogfood%-1
set /a doghappyorsad=%doghappyorsad%+5
set /a doghunger=%doghunger%+10
goto feeddog2


:feeddog2
cls
echo ออออออออออออออออออออออออออออออออออ
echo บ                                บ
echo บ  YOU GAVE YOUR DOG 1 DOG FOOD  บ
echo บ     you have %dogfood% left    บ
echo ออออออออออออออออออออออออออออออออออ
pause
goto doghouse

:feeddog3
cls
echo ออออออออออออออออออออออออออออออออออ
echo บ                                บ
echo บ    YOU DO NOT HAVE ANY FOOD    บ
echo บ        TO YOUR DOG LEFT        บ
echo ออออออออออออออออออออออออออออออออออ
pause
goto doghouse

:stats
cls
echo ออออออออออออออออออออออออออออออออออ
echo บ                                บ
echo บ Name: %name%                   บ
echo บ Money: %money%                 บ
echo บ Level: %pexp%                  บ
echo บ Xp dust: %pexpdust%            บ
echo บ Kills: %kills%                 บ
echo บ                                บ
echo บออออออออออออออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto menu
goto stats

:contactme
cls
echo บออออออออออออออออออออออออออออออออบ                              
echo บ you can report a error in the  บ  
echo บ game to me on those medias     บ 
echo บ                                บ
echo บ you can also see more info     บ
echo บ about the game                 บ
echo บ                                บ
echo บ also if you have some ideas to บ
echo บ my game plz make a code to the บ
echo บ or just say what you want into บ
echo บ my game                        บ
echo บ                                บ
echo บ and i will try to put it into  บ
echo บ my game                        บ
echo บออออออออออออออออออออออออออออออออบ  
echo บ                                บ  
echo บ Press 1 go to my Twitter       บ  
echo บ                                บ  
echo บ Press 2 see my Gmail           บ  
echo บ                                บ
echo บ Press a go to menu             บ
echo บ                                บ  
echo บออออออออออออออออออออออออออออออออบ
set /p media=
if %media% == 1 goto twitter
if %media% == 2 goto gmail
if %media% == 3 goto menu
goto contactme

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
goto gmail

:levelcreate
cls
echo บอออออออออออออออออออออออออออออออบ
echo บ you are in level %pexp% 
echo บอออออออออออออออออออออออออออออออบ
echo บ you have %pexpdust% xp dust   
echo บอออออออออออออออออออออออออออออออบ
echo บ                               บ
echo บ Press 1 for turn 10 of your   บ
echo บ xp dust into a level          บ
echo บ                               บ            
echo บอออออออออออออออออออออออออออออออบ 
echo บ                               บ  
echo บ    Press a go back to shop    บ 
echo บ                               บ          
echo บอออออออออออออออออออออออออออออออบ 
set /p menu=
if %menu% == 1 goto xpdust
if %menu% == a goto shop
goto levelcreate

:xpdust
if %pexpdust% lss 10 goto xpdustfail
set /a pexpdust=%pexpdust%-10
set /a pexp=%pexp%+1
goto xpdustnf

xpdustnf
cls
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                                            บ
echo บ    turnt 10 of your xp dust into a level   บ
echo บ                                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
pause
goto levelcreate

:xpdustfail
cls
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                                            บ
echo บ            you need more xp dust           บ
echo บ                                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
pause
goto levelcreate

:shop
cls
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo                     SHOP   your money %money% 
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                                            บ
echo บ             Press 1 buy swords             บ
echo บ             Press 2 buy pets               บ
echo บ             Press 3 create level           บ            
echo บ             Press a go back                บ
echo บ                                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto swordsb
if %menu% == 2 goto petshop
if %menu% == 3 goto levelcreate
if %menu% == a goto save
goto shop

:petshop
cls
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ        Pet shop                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                                            บ
echo บ Press 1 go to dog things                   บ
echo บ                                            บ
echo บ Press a go back                            บ
echo บ                                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto dogshop
if %menu% == 2 goto shop
goto petshop

:dogshop
cls
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ        Pet shop                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                                            บ
echo บ Press 1 Buy dog for $450                   บ
if %dogstatus% EQU active echo บ Press 2 Buy 10 dogHP/Life for $10                                           บ
if %dogstatus% EQU active echo บ Press 3 Buy 10 dog food for $25                                           บ
if %dogstatus% EQU active echo บ Press 4 give your dog a name for $100                                           บ

echo บ Press a go back                            บ
echo บ                                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto dogbuy
if %menu% == 2 goto doghpbuy
if %menu% == 3 goto dogfoodbuy
if %menu% == 4 goto dognamebuy
if %menu% == a goto shop
goto petshop

:shopmorem
cls
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                                            บ
echo บ            you need more money             บ
echo บ                                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
pause
goto shop

:shopsucces
cls
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                                            บ
echo บ               purchase succes              บ
echo บ                                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
pause
goto shop

:swordsb
cls
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo                            your money %money% 
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                                            บ
echo บ        Press 1 buy stone sword for $120    บ
echo บ        Press 2 buy copper sword for $250   บ
echo บ        Press 3 buy iron sword for $325     บ
echo บ        Press 4 buy gold sword for $400     บ
echo บ        Press a go back                     บ
echo บ                                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto stoneswordbuy
if %menu% == 2 goto copperswordbuy
if %menu% == 3 goto ironswordbuy
if %menu% == 4 goto goldswordbuy
if %menu% == a goto shop
goto swordsb

:dogbuy
if %money% lss 450 goto shopmorem
set /a money=%money%-450
set dogstatus=active
goto shopsucces

:doghpbuy
if %money% lss 10 goto shopmorem
set /a money=%money%-10
set /a doghp=%doghp%+10
goto shopsucces

:dognamebuy
if %money% lss 100 goto shopmorem
set /a money=%money%-100
set dognamestatus=active
goto shopsucces

:dogfoodbuy
if %money% lss 25 goto shopmorem
set /a money=%money%-25
set /a doghappyorsad=%doghappyorsad%+3
set /a doghunger=%doghunger%+10
goto shopsucces

:stoneswordbuy
if %money% lss 120 goto shopmorem
set /a money=%money%-120
set stoneswordstatus=active
goto shopsucces

:copperswordbuy
if %money% lss 250 goto shopmorem
set /a money=%money%-250
set copperswordstatus=active
goto shopsucces

:ironswordbuy
if %money% lss 325 goto shopmorem
set /a money=%money%-325
set ironswordstatus=active
goto shopsucces

:goldswordbuy
if %money% lss 400 goto shopmorem
set /a money=%money%-400
set goldswordstatus=active
goto shopsucces

:armorb
cls
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo                                   your money  
echo บออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                                            บ
echo บ        Press 1 buy armor for $600          บ
echo บ        Press a go back                     บ
echo บ                                            บ
echo บออออออออออออออออออออออออออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto armorbuy
if %menu% == a goto shop
goto armorb

:armorbuy
if %money% LSS 600 goto shopmorem
set /a money=%money%-600
set /a maxarmor+%maxarmor%+1
goto shopsucces

:classicmode1
set /a mob=%random% %%3 +1  
if %mob% EQU 1 goto classicbat
if %mob% EQU 2 goto classicsnake
if %mob% EQU 3 goto classicork
if %mob% EQU 4 goto classicCknight

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
echo บ          (O_O)                                                              บ
echo บ           /I\                               \\ (O-o) //                     บ
echo บ          / I \                                \ ____/                       บ
echo บ           / \                                  I   I                        บ
echo บ          /   \                                                              บ                  
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ                                                                    
echo บ    ATTACKS                                                                  บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo Press 1 for punch
echo press 2 for kick
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
if %stoneswordstatus% EQU active echo Press a for stone sword
if %copperswordstatus% EQU active echo Press b for copper sword
if %ironswordstatus% EQU active echo Press c for iron sword
if %goldswordstatus% EQU active echo Press d for goldsword
set /p menu=
if %menu% == 1 goto batclassicpunch
if %menu% == 2 goto batclassickick
if %menu% == a goto classicbatstonesword
if %menu% == b goto classicbatcoppersword
if %menu% == c goto classicbatironsword
if %menu% == d goto classicbatgoldsword
goto classicbat

:batclassichealingpotion
if %chp% LEQ 0 goto boss
set /a php=%php%+25
set /a %chp%-1
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

:classicstonesword

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

:classicbatstonesword
set /a classicbathp=%classicbathp%-%Random% %%7-10%
goto classicbatattack

:classicbatcoppersword
set /a classicbathp=%classicbathp%-%Random% %%10-11%
goto classicbatattack

:classicbatironsword
set /a classicbathp=%classicbathp%-%Random% %%13-8%
goto classicbatattack

:classicbatgoldsword
set /a classicbathp=%classicbathp%-%Random% %%15-15%
goto classicbatattack

:classicsnake
cls
if %php% leq 0 goto classicloss
if %classicsnakehp% leq 0 goto classicwin
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ Player %name% Hp %php% Level %exp%   VS   Monster snake Hp %classicsnakehp% บ
echo.บ armor %maxarmor%                                                            บ
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
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
if %stoneswordstatus% EQU active echo Press a for stone sword
if %copperswordstatus% EQU active echo Press b for copper sword
if %ironswordstatus% EQU active echo Press c for iron sword
if %goldswordstatus% EQU active echo Press d for goldsword
set /p menu=
if %menu% == 1 goto snakeclassicpunch
if %menu% == 2 goto snakeclassickick
if %menu% == a goto classicsnakestonesword
if %menu% == b goto classicsnakecoppersword
if %menu% == c goto classicsnakeironsword
if %menu% == d goto classicsnakegoldsword
goto classicsnake

:snakeclassichealingpotion
if %chp% LEQ 0 goto classicsnake
set /a php=%php%+25
set /a %chp%-1
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

:classicsnakestonesword
set /a classicsnakehp=%classicsnakehp%-%Random% %%7-10%
goto classicsnakeattack

:classicsnakecoppersword
set /a classicsnakehp=%classicsnakehp%-%Random% %%10-11%
goto classicsnakeattack

:classicsnakeironsword
set /a classicsnakehp=%classicsnakehp%-%Random% %%13-8%
goto classicsnakeattack

:classicsnakegoldsword
set /a classicsnakehp=%classicsnakehp%-%Random% %%15-15%
goto classicsnakeattack

:classicork
cls
if %php% leq 0 goto classicloss
if %classicorkhp% leq 0 goto classicwin
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ Player %name% Hp %php% Level %exp%    VS    Monster ork Hp %classicorkhp%   บ
echo.บ armor %maxarmor%                                                            บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo.บ                                                                             บ
echo บ           YOU                    (0..0)                                     บ
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
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
if %stoneswordstatus% EQU active echo Press a for stone sword
if %copperswordstatus% EQU active echo Press b for copper sword
if %ironswordstatus% EQU active echo Press c for iron sword
if %goldswordstatus% EQU active echo Press d for goldsword
set /p menu=
if %menu% == 1 goto orkclassicpunch
if %menu% == 2 goto orkclassickick
if %menu% == a goto classicorkstonesword
if %menu% == b goto classicorkcoppersword
if %menu% == c goto classicorkironsword
if %menu% == d goto classicorkgoldsword
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
set /a php=%php%-%Random% %%20-7%
goto classicork

:classicorkstonesword
set /a classicorkhp=%classicorkhp%-%Random% %%11-10%
goto classicorkattack

:classicorkcoppersword
set /a classicorkhp=%classicorkhp%-%Random% %%17-11%
goto classicorkattack

:classicorkironsword
set /a classicorkhp=%classicorkhp%-%Random% %%19-17%
goto classicorkattack

:classicorkgoldsword
set /a classicorkhp=%classicorkhp%-%Random% %%25-19%
goto classicorkattack

:classicCknight
cls
if %php% leq 0 goto classicloss
if %classicCknighthp% leq 0 goto classicCknightwin
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ Player %name% Hp %php% Level %exp% VS Monster knight Hp %classicCknighthp%  บ
echo.บ armor %maxarmor%                                                            บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo.บ                                                                             บ
echo บ           YOU                                                               บ
echo.บ                               \   (===)                                     บ
echo บ          (O_O)                 \  //I\\                                     บ
echo บ           /I\                   \// I \\                                    บ
echo บ          / I \                      I                                       บ
echo บ           / \                     // \\                                     บ
echo บ          /   \                   //   \\                                    บ                  
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ                                                                    
echo บ    ATTACKS                                                                  บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo Press 1 for punch
echo press 2 for kick
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
if %stoneswordstatus% EQU active echo Press a for stone sword
if %copperswordstatus% EQU active echo Press b for copper sword
if %ironswordstatus% EQU active echo Press c for iron sword
if %goldswordstatus% EQU active echo Press d for goldsword
set /p menu=
if %menu% == 1 goto Cknightclassicpunch
if %menu% == 2 goto Cknightclassickick
if %menu% == a goto classicCknightstonesword
if %menu% == b goto classicCknightcoppersword
if %menu% == c goto classicCknightironsword
if %menu% == d goto classicCknightgoldsword
goto classicCknight

:Cknightclassicpunch
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto Cknightclassickick1
if %snakecp% EQU 2 goto Cknightclassickick2
if %snakecp% EQU 3 goto Cknightclassickick3
:Cknightclassicpunch1
set /a classicCknighthp=%classicCknighthp%-%Random% %%17-10%
goto classicCknightattack
:Cknightclassicpunch2
set /a classicCknighthp=%classicCknighthp%-%Random% %%27-8%
goto classicCknightattack
:Cknightclassicpunch3
set /a classicCknighthp=%classicCknighthp%-%Random% %%19-10%
goto classicCknightattack

:Cknightclassickick
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto Cknightclassickick1
if %snakecp% EQU 2 goto Cknightclassickick2
if %snakecp% EQU 3 goto Cknightclassickick3
:Cknightclassickick1
set /a classicCknighthp=%classicCknighthp%-%Random% %%30-5%
goto classicCknightattack
:Cknightclassickick2
set /a classicCknighthp=%classicCknighthp%-%Random% %%30-18%
goto classicCknightattack
:Cknightclassickick3
set /a classicCknighthp=%classicCknighthp%-%Random% %%31-20%
goto classicCknightattack

:classicCknightattack
set /a snakecp=%random% %%3 +1
if %snakecp% EQU 1 goto classicCknightattack1
if %snakecp% EQU 2 goto classicCknightattack2
if %snakecp% EQU 3 goto classicCknightattack3
:classicorkattack1
set /a php=%php%-%Random% %%16-2%
goto classicCknight
:classicorkattack2
set /a php=%php%-%Random% %%20-10%
goto classicCknight
:classicorkattack3
set /a php=%php%-%Random% %%30-18%
goto classicCknight

:classicCknightstonesword
set /a classicCknighthp=%classicCknighthp%-%Random% %%10-10%
goto classicCknightattack

:classicCknightcoppersword
set /a classicCknighthp=%classicCknighthp%-%Random% %%19-15%
goto classicCknightattack

:classicCknightironsword
set /a classicCknighthp=%classicCknighthp%-%Random% %%27-20%
goto classicCknightattack

:classicCknightgoldsword
set /a classicCknighthp=%classicCknighthp%-%Random% %%30-20%
goto classicCknightattack

:classicCknightwin
set /a pexpdust=%pexpdust%+%%5-1%
set /a money=%money%+100
set /a chp=%chp%+%%1-0%
set /a cmp=%cmp%+%%1-0%
set php=200
set pmana=50
set classicbathp=150
set classicsnakehp=200
set classicorkhp=250
set clasicCknighthp=300
echo บออออออออออออออออออออบ
echo บ                    บ
echo บ       YOU WON      บ 
echo บ                    บ
echo บ Press 1 play again บ
echo บ Press 2 go to menu บ
echo บออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto classicmode1
if %menu% == 2 goto save
goto classicCknightwin

:classicwin
set /a pexpdust=%pexpdust%+2
set /a kills=%kills%+1
set /a money=%random%+10
set /a chp=%chp%+%%1-0%
set /a cmp=%cmp%+%%1-0%
set php=200
set doghp=50
set pmana=50
set classicbathp=150
set classicsnakehp=200
set classicorkhp=250
set clasicCknighthp=300
echo บออออออออออออออออออออบ
echo บ                    บ
echo บ       YOU WON      บ 
echo บ                    บ
echo บ Press 1 play again บ
echo บ Press 2 go to menu บ
echo บออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto classicmode1
if %menu% == 2 goto save
goto classicwin

:classicloss
set doghappyorsad=%doghappyorsad%-3
set doghunger=%doghunger%-2
set php=200
set doghp=50
set pmana=50
set classicbathp=150
set classicsnakehp=200
set classicorkhp=250
set clasicCknighthp=300
echo บออออออออออออออออออออบ
echo บ                    บ
echo บ      YOU DIED      บ 
echo บ                    บ
echo บ Press 1 go to menu บ
echo บออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto save
goto classicloss

:multiplayermode1
cls
echo บอออออออออออออออออออออออออออออออบ
echo บ  FANTASY FIGHT - MULTIPLAYER  บ
echo บอออออออออออออออออออออออออออออออบ
echo บ       Press 1 play            บ
echo บ       Press 2 how to play     บ
echo บ       Press 3 stats           บ 
echo บ                               บ 
echo บ       Press a go to menu      บ 
echo บ                               บ             
echo อออออออออออออออออออออออออออออออออ
set /p menu=
if %menu% == 1 goto multiplayerP1attack
if %menu% == 2 goto howtoplaymultiplayer
if %menu% == 3 goto multiplayerstats
if %menu% == a save

:multiplayerP1attack
cls
if %p1hp% leq 0 goto player2win
if %p2hp% leq 0 goto player1win
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo.บ                                                                             บ
echo.บ                            PLAYER 1 TURN                                    บ
echo.บ                                                                             บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                  Player 1 Hp %p1hp% VS Player 2 Hp %p2hp%                   บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo.บ                                                                             บ
echo บ                     PLAYER 1                 PLAYER 2                       บ
echo.บ                                                                             บ
echo บ                      (O_O)                    (O_O)                         บ
echo บ                       /I\                      /I\                          บ
echo บ                      / I \                    / I \                         บ
echo บ                       / \                      / \                          บ
echo บ                      /   \                    /   \                         บ                                                 
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ    ATTACKS                                                                  บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo Press W for punch
echo press A for kick
echo Press S for stick
set /p menu=
if %menu% == w goto player1punch
if %menu% == a goto player1kick
if %menu% == s goto player1stick
goto multiplayerP1attack

:player1punch
set /a p2hp=%p2hp%-%Random% %%10-1%
goto multiplayerP2attack

:player1kick
set /a p2hp=%p2hp%-%Random% %%10-2%
goto multiplayerP2attack

:player1stick
set /a p2hp=%p2hp%-%Random% %%11-2%
goto multiplayerP2attack

:multiplayerP2attack
cls
if %p1hp% leq 0 goto player2win
if %p2hp% leq 0 goto player1win
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo.บ                                                                             บ
echo.บ                            PLAYER 2 TURN                                    บ
echo.บ                                                                             บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ                  Player 1 Hp %p1hp% VS Player 2 Hp %p2hp%                   บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo.บ                                                                             บ
echo บ                     PLAYER 1                 PLAYER 2                       บ
echo.บ                                                                             บ
echo บ                      (O_O)                    (O_O)                         บ
echo บ                       /I\                      /I\                          บ
echo บ                      / I \                    / I \                         บ
echo บ                       / \                      / \                          บ
echo บ                      /   \                    /   \                         บ                                                 
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ    ATTACKS                                                                  บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo Press O for punch
echo press K for kick
echo Press L for stick
set /p menu=
if %menu% == o goto player2punch
if %menu% == k goto player2kick
if %menu% == l goto player2stick
goto multiplayerP2attack

:player2punch
set /a p1hp=%p1hp%-%Random% %%10-1%
goto multiplayerP1attack

:player2kick
set /a p1hp=%p1hp%-%Random% %%10-2%
goto multiplayerP1attack

:player2stick
set /a p1hp=%p1hp%-%Random% %%11-2%
goto multiplayerP1attack

:player1win
cls
set p1hp=50
set p2hp=50
echo บออออออออออออออออออออบ
echo บ                    บ
echo บ    PLAYER 1 WON    บ 
echo บ                    บ
echo บ Press 1 go to menu บ
echo บออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto multiplayermode1
goto player1win
 
:player2win
cls
set p1hp=50
set p2hp=50
echo บออออออออออออออออออออบ
echo บ                    บ
echo บ    PLAYER 2 WON    บ 
echo บ                    บ
echo บ Press 1 go to menu บ
echo บออออออออออออออออออออบ
set /p menu=
if %menu% == 1 goto multiplayermode1
goto player2win