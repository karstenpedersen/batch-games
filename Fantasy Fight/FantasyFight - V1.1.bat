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
echo ��������������������������
echo Press 1 start new game
echo Press 2 load a saved game
echo Press a exit
echo ��������������������������
set /p menu=
if %menu% == 1 goto new
if %menu% == 2 goto infomenuload
if %menu% == a exit
goto startup

:new
cls
echo ��������������������������
echo.
echo.
set /p name=type the name you want:
echo.
echo. 
set /p pass=type the password you want:
goto new1

:new1
cls
echo ��������������������������
echo.
echo this is your name %name%
echo.
echo this is your password %pass%
echo
echo ��������������������������
pause
goto infomenunew

:infomenunew
cls
echo ������������������������������������������
echo �                                        � 
echo �              FANTASY FIGHT             � 
echo �                                        � 
echo �                                        � 
echo � Created by PopcornPro             V1.1 �
echo �                                        �
echo ������������������������������������������
pause
goto save

:infomenuload
cls
echo ������������������������������������������
echo �                                        � 
echo �              FANTASY FIGHT             � 
echo �                                        � 
echo �                                        � 
echo � Created by PopcornPro             V1.1 �
echo �                                        �
echo ������������������������������������������
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
echo �������������������������������ͺ
echo �      FANTASY FIGHT - V1.0     �
echo �������������������������������ͺ
echo �Player %name%  MENU Level %pexp%�
echo �������������������������������ͺ
echo �       Press 1 play            �
echo �       Press 2 multiplayer     �
echo �       Press 3 shop            � 
echo �       Press 4 stats           �
echo �                               � 
echo �       Press a exit            � 
echo �       Press b contact me      �  
if %dogstatus% EQU active echo � Press c see your dog                       �  
echo �                               �          
echo ���������������������������������
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
echo ��������������������������������������������������������������������������������������������������������ͺ
echo � DOG                                                                                                    �
echo �������������������������������������������������������������������                                      �
echo � Press 1 see dog info                                          �����������������DOG STATUS�������������ͺ   
echo � Press 2 feed your dog                                         /// name: %dogname%                   ///�
echo � Press 3 go with your dog                                      /// hp: %doghp%                       ///�
echo � Press a go to menu                                            /// level: %dogexp%                   ///�
echo �                                                               ///                                   ///�
echo �          Your DOG     WOW       YOU                           /// you have %dogfood% dog food       ///�
echo �                     WOW        [O_O]                          ///                                   ///�
echo �                ( O)=            /I\                           ///                                   ///�
echo �        /(((((((I               / I \                          ///                                   ///�
echo �       / ========                / \                           /// how happy is your dog %doghappyorsad%/100  ///�
echo �         I      I               /   \                          /// how hungry your dog are %doghunger%/100              ///�
echo ��������������������������������������������������������������������������������������������������������ͺ
set /p press=
if %press% == 1 goto doginfopage
if %press% == 2 goto feeddog
if %press% == 3 goto doggo
if %press% == a goto save
goto doghouse

:doginfopage
cls
echo ����������������������������������
echo � your dog can be use in fights  �
echo � your dog attacks to times in a �                          
echo � attack                         �
echo �                                �
echo � Press a go back                �
echo �                                �
echo ����������������������������������
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
echo ����������������������������������
echo �                                �
echo �  YOU GAVE YOUR DOG 1 DOG FOOD  �
echo �     you have %dogfood% left    �
echo ����������������������������������
pause
goto doghouse

:feeddog3
cls
echo ����������������������������������
echo �                                �
echo �    YOU DO NOT HAVE ANY FOOD    �
echo �        TO YOUR DOG LEFT        �
echo ����������������������������������
pause
goto doghouse

:stats
cls
echo ����������������������������������
echo �                                �
echo � Name: %name%                   �
echo � Money: %money%                 �
echo � Level: %pexp%                  �
echo � Xp dust: %pexpdust%            �
echo � Kills: %kills%                 �
echo �                                �
echo ��������������������������������ͺ
set /p menu=
if %menu% == 1 goto menu
goto stats

:contactme
cls
echo ��������������������������������ͺ                              
echo � you can report a error in the  �  
echo � game to me on those medias     � 
echo �                                �
echo � you can also see more info     �
echo � about the game                 �
echo �                                �
echo � also if you have some ideas to �
echo � my game plz make a code to the �
echo � or just say what you want into �
echo � my game                        �
echo �                                �
echo � and i will try to put it into  �
echo � my game                        �
echo ��������������������������������ͺ  
echo �                                �  
echo � Press 1 go to my Twitter       �  
echo �                                �  
echo � Press 2 see my Gmail           �  
echo �                                �
echo � Press a go to menu             �
echo �                                �  
echo ��������������������������������ͺ
set /p media=
if %media% == 1 goto twitter
if %media% == 2 goto gmail
if %media% == 3 goto menu
goto contactme

:twitter
start iexplore.exe http://twitter.com/1PopcornProYT

:gmail
cls
echo ������������������������������ͺ
echo �                              �
echo � Gmail:karstenp2003@gmail.com �
echo �                              �
echo � Press 1 go to menu           �
echo �                              �
echo ������������������������������ͺ
set /p gmail=
if %gmail% == 1 goto menu
goto gmail

:levelcreate
cls
echo �������������������������������ͺ
echo � you are in level %pexp% 
echo �������������������������������ͺ
echo � you have %pexpdust% xp dust   
echo �������������������������������ͺ
echo �                               �
echo � Press 1 for turn 10 of your   �
echo � xp dust into a level          �
echo �                               �            
echo �������������������������������ͺ 
echo �                               �  
echo �    Press a go back to shop    � 
echo �                               �          
echo �������������������������������ͺ 
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
echo ��������������������������������������������ͺ
echo �                                            �
echo �    turnt 10 of your xp dust into a level   �
echo �                                            �
echo ��������������������������������������������ͺ
pause
goto levelcreate

:xpdustfail
cls
echo ��������������������������������������������ͺ
echo �                                            �
echo �            you need more xp dust           �
echo �                                            �
echo ��������������������������������������������ͺ
pause
goto levelcreate

:shop
cls
echo ��������������������������������������������ͺ
echo                     SHOP   your money %money% 
echo ��������������������������������������������ͺ
echo �                                            �
echo �             Press 1 buy swords             �
echo �             Press 2 buy pets               �
echo �             Press 3 create level           �            
echo �             Press a go back                �
echo �                                            �
echo ��������������������������������������������ͺ
set /p menu=
if %menu% == 1 goto swordsb
if %menu% == 2 goto petshop
if %menu% == 3 goto levelcreate
if %menu% == a goto save
goto shop

:petshop
cls
echo ��������������������������������������������ͺ
echo �        Pet shop                            �
echo ��������������������������������������������ͺ
echo �                                            �
echo � Press 1 go to dog things                   �
echo �                                            �
echo � Press a go back                            �
echo �                                            �
echo ��������������������������������������������ͺ
set /p menu=
if %menu% == 1 goto dogshop
if %menu% == 2 goto shop
goto petshop

:dogshop
cls
echo ��������������������������������������������ͺ
echo �        Pet shop                            �
echo ��������������������������������������������ͺ
echo �                                            �
echo � Press 1 Buy dog for $450                   �
if %dogstatus% EQU active echo � Press 2 Buy 10 dogHP/Life for $10                                           �
if %dogstatus% EQU active echo � Press 3 Buy 10 dog food for $25                                           �
if %dogstatus% EQU active echo � Press 4 give your dog a name for $100                                           �

echo � Press a go back                            �
echo �                                            �
echo ��������������������������������������������ͺ
set /p menu=
if %menu% == 1 goto dogbuy
if %menu% == 2 goto doghpbuy
if %menu% == 3 goto dogfoodbuy
if %menu% == 4 goto dognamebuy
if %menu% == a goto shop
goto petshop

:shopmorem
cls
echo ��������������������������������������������ͺ
echo �                                            �
echo �            you need more money             �
echo �                                            �
echo ��������������������������������������������ͺ
pause
goto shop

:shopsucces
cls
echo ��������������������������������������������ͺ
echo �                                            �
echo �               purchase succes              �
echo �                                            �
echo ��������������������������������������������ͺ
pause
goto shop

:swordsb
cls
echo ��������������������������������������������ͺ
echo                            your money %money% 
echo ��������������������������������������������ͺ
echo �                                            �
echo �        Press 1 buy stone sword for $120    �
echo �        Press 2 buy copper sword for $250   �
echo �        Press 3 buy iron sword for $325     �
echo �        Press 4 buy gold sword for $400     �
echo �        Press a go back                     �
echo �                                            �
echo ��������������������������������������������ͺ
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
echo ��������������������������������������������ͺ
echo                                   your money  
echo ��������������������������������������������ͺ
echo �                                            �
echo �        Press 1 buy armor for $600          �
echo �        Press a go back                     �
echo �                                            �
echo ��������������������������������������������ͺ
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
echo �����������������������������������������������������������������������������ͺ
echo � Player %name% Hp %php% Level %exp%     VS     Monster bat Hp %classicbathp% �
echo.� armor %maxarmor%                                                            �
echo �����������������������������������������������������������������������������ͺ
echo.�                                                                             �
echo �           YOU                                                               �
echo.�                                                                             �
echo �          (O_O)                                                              �
echo �           /I\                               \\ (O-o) //                     �
echo �          / I \                                \ ____/                       �
echo �           / \                                  I   I                        �
echo �          /   \                                                              �                  
echo �����������������������������������������������������������������������������ͺ                                                                    
echo �    ATTACKS                                                                  �
echo �����������������������������������������������������������������������������ͺ
echo Press 1 for punch
echo press 2 for kick
echo �����������������������������������������������������������������������������ͺ
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
echo �����������������������������������������������������������������������������ͺ
echo � Player %name% Hp %php% Level %exp%   VS   Monster snake Hp %classicsnakehp% �
echo.� armor %maxarmor%                                                            �
echo �����������������������������������������������������������������������������ͺ
echo.�                                                                             �
echo �           YOU                                                               �
echo.�                                                                             �
echo �          (O_O)                                                              �
echo �           /I\                                                               �
echo �          / I \            =('_)           //                                �
echo �           / \               \  \________/ /                                 �
echo �          /   \               \___________/                                  �                  
echo �����������������������������������������������������������������������������ͺ                                                                    
echo �    ATTACKS                                                                  �
echo �����������������������������������������������������������������������������ͺ
echo Press 1 for punch
echo press 2 for kick
echo �����������������������������������������������������������������������������ͺ
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
echo �����������������������������������������������������������������������������ͺ
echo � Player %name% Hp %php% Level %exp%    VS    Monster ork Hp %classicorkhp%   �
echo.� armor %maxarmor%                                                            �
echo �����������������������������������������������������������������������������ͺ
echo.�                                                                             �
echo �           YOU                    (0..0)                                     �
echo.�                                 /======\                                    �
echo �          (O_O)                 //(    )\\                                   �
echo �           /I\                  / (____) \\                                  �
echo �          / I \                  ()    ()                                    �
echo �           / \                  ()      ()                                   �
echo �          /   \               (   )    (   )                                 �                  
echo �����������������������������������������������������������������������������ͺ                                                                    
echo �    ATTACKS                                                                  �
echo �����������������������������������������������������������������������������ͺ
echo Press 1 for punch
echo press 2 for kick
echo �����������������������������������������������������������������������������ͺ
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
echo �����������������������������������������������������������������������������ͺ
echo � Player %name% Hp %php% Level %exp% VS Monster knight Hp %classicCknighthp%  �
echo.� armor %maxarmor%                                                            �
echo �����������������������������������������������������������������������������ͺ
echo.�                                                                             �
echo �           YOU                                                               �
echo.�                               \   (===)                                     �
echo �          (O_O)                 \  //I\\                                     �
echo �           /I\                   \// I \\                                    �
echo �          / I \                      I                                       �
echo �           / \                     // \\                                     �
echo �          /   \                   //   \\                                    �                  
echo �����������������������������������������������������������������������������ͺ                                                                    
echo �    ATTACKS                                                                  �
echo �����������������������������������������������������������������������������ͺ
echo Press 1 for punch
echo press 2 for kick
echo �����������������������������������������������������������������������������ͺ
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
echo ��������������������ͺ
echo �                    �
echo �       YOU WON      � 
echo �                    �
echo � Press 1 play again �
echo � Press 2 go to menu �
echo ��������������������ͺ
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
echo ��������������������ͺ
echo �                    �
echo �       YOU WON      � 
echo �                    �
echo � Press 1 play again �
echo � Press 2 go to menu �
echo ��������������������ͺ
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
echo ��������������������ͺ
echo �                    �
echo �      YOU DIED      � 
echo �                    �
echo � Press 1 go to menu �
echo ��������������������ͺ
set /p menu=
if %menu% == 1 goto save
goto classicloss

:multiplayermode1
cls
echo �������������������������������ͺ
echo �  FANTASY FIGHT - MULTIPLAYER  �
echo �������������������������������ͺ
echo �       Press 1 play            �
echo �       Press 2 how to play     �
echo �       Press 3 stats           � 
echo �                               � 
echo �       Press a go to menu      � 
echo �                               �             
echo ���������������������������������
set /p menu=
if %menu% == 1 goto multiplayerP1attack
if %menu% == 2 goto howtoplaymultiplayer
if %menu% == 3 goto multiplayerstats
if %menu% == a save

:multiplayerP1attack
cls
if %p1hp% leq 0 goto player2win
if %p2hp% leq 0 goto player1win
echo �����������������������������������������������������������������������������ͺ
echo.�                                                                             �
echo.�                            PLAYER 1 TURN                                    �
echo.�                                                                             �
echo �����������������������������������������������������������������������������ͺ
echo �                  Player 1 Hp %p1hp% VS Player 2 Hp %p2hp%                   �
echo �����������������������������������������������������������������������������ͺ
echo.�                                                                             �
echo �                     PLAYER 1                 PLAYER 2                       �
echo.�                                                                             �
echo �                      (O_O)                    (O_O)                         �
echo �                       /I\                      /I\                          �
echo �                      / I \                    / I \                         �
echo �                       / \                      / \                          �
echo �                      /   \                    /   \                         �                                                 
echo �����������������������������������������������������������������������������ͺ
echo �    ATTACKS                                                                  �
echo �����������������������������������������������������������������������������ͺ
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
echo �����������������������������������������������������������������������������ͺ
echo.�                                                                             �
echo.�                            PLAYER 2 TURN                                    �
echo.�                                                                             �
echo �����������������������������������������������������������������������������ͺ
echo �                  Player 1 Hp %p1hp% VS Player 2 Hp %p2hp%                   �
echo �����������������������������������������������������������������������������ͺ
echo.�                                                                             �
echo �                     PLAYER 1                 PLAYER 2                       �
echo.�                                                                             �
echo �                      (O_O)                    (O_O)                         �
echo �                       /I\                      /I\                          �
echo �                      / I \                    / I \                         �
echo �                       / \                      / \                          �
echo �                      /   \                    /   \                         �                                                 
echo �����������������������������������������������������������������������������ͺ
echo �    ATTACKS                                                                  �
echo �����������������������������������������������������������������������������ͺ
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
echo ��������������������ͺ
echo �                    �
echo �    PLAYER 1 WON    � 
echo �                    �
echo � Press 1 go to menu �
echo ��������������������ͺ
set /p menu=
if %menu% == 1 goto multiplayermode1
goto player1win
 
:player2win
cls
set p1hp=50
set p2hp=50
echo ��������������������ͺ
echo �                    �
echo �    PLAYER 2 WON    � 
echo �                    �
echo � Press 1 go to menu �
echo ��������������������ͺ
set /p menu=
if %menu% == 1 goto multiplayermode1
goto player2win