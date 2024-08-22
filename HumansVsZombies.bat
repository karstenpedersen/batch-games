@echo off
color 0a
title Zombie Vs Humans
mode 1000

::Stats
set doghp=50
set dogexp=1
set doglove=100
set hp=100
set killbosshp=300
set bosshp=500
set zomhp=100
set exp=1
set zomexp=1 
set money=30000

::Limits
set gunlimit=3
set ak47limit=3
set c4limit=1
set knifelimit=100
set bossheallimit=4
set houselimit=10

::shop
set ak47status=n
set c4status=n
set knifestatus=n

::city
set housestatus=n

::shopmedecin1
set kadodilstatus=n

:start
echo ============================
echo Press (1) for new game
echo Press (2) for load old game
echo ============================
set /p no=
if %no% == 1 goto new
if %no% == 2 goto load

:load 
(
set storyzomhp1=
set storybosshp1=
set storyhp=
set doghp=
set dogexp=
set doglove=
set /p dogname=
set /p kadodilstatus=
set /p knifestatus=
set /p c4status=
set /p ak47status=
set /p name=
set /p exp=
set /p zomexp=
set /p money=
set /p house=
)<save.dlb
goto menu

:new
echo Hello! what is your name?
echo.
set /p name=
echo Hello %name%
goto loadingscreen

:loadingscreen
cls
echo.
echo.
echo.
echo    Loading...       Please Wait
echo ----------------------------------
echo                              = 0 ] 
echo ----------------------------------
echo
echo.
echo.
echo.
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo    Loading.         Please Wait
echo ----------------------------------
echo []                          = 10 ]
echo ----------------------------------
echo
echo.
echo.
echo.
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo    Loading..        Please Wait
echo ----------------------------------
echo [][]                         = 19]
echo ----------------------------------
echo
echo.
echo.
echo.
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo    Loading...       Please Wait
echo ----------------------------------
echo [][][][]                    = 33 ]
echo ----------------------------------
echo
echo.
echo.
echo.
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo    Loading.         Please Wait
echo ----------------------------------
echo [][][][][]                  = 50 ]
echo ----------------------------------
echo
echo.
echo.
echo.
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo    Loading..        Please Wait
echo ----------------------------------
echo [][][][][][]                = 69 ]
echo ----------------------------------
echo
echo.
echo.
echo.
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo    Loading...       Please Wait
echo ----------------------------------
echo [][][][][][][][]            = 81 ]
echo ----------------------------------
echo
echo.
echo.
echo.
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo    Loading.         Please Wait
echo ----------------------------------
echo [][][][][][][][][][]       = 100 ]
echo ----------------------------------
echo
echo.
echo.
echo.

::===============:: Loading completet ::===============::
echo.
echo. 
echo.
::===============:: Loading completet ::===============::
goto succes

:succes
cls
echo ===================================================
echo.
echo                     Game loaded
echo.
echo ===================================================
goto history 

:history 
cls
echo =============================
echo history
echo =============================
echo it all starts with a sick
echo girl there mutated into
echo a zombie!!!
echo.
echo page 1
pause
goto history2

:history2
cls
echo ============================
echo history
echo ============================
echo some doctors took the 
echo zombie to a hospital in
echo new york
echo.
echo page 2
pause
goto his3

:his3
cls 
echo =============================
echo history
echo =============================
echo the girl escapped and ate
echo all the doctors brains
echo so now there are more zombies
echo.
echo page 3
pause
goto his

:his
cls
echo =============================
echo history
echo =============================
echo and they are still 
echo mutating...
echo.
echo page 4
pause
goto startpicturehumans

:startpicturehumans
cls
echo.
echo.
echo ///   ///  ///    ///   ////  ////    ///////    /////     ///   ////////
echo ///   ///  ///    /// /// ///// ///  ///   ///  /// ///    ///  ///
echo ///   ///  ///    /// ///       ///  ///   ///  ///  ///   ///  ///
echo /////////  ///    /// ///       ///  /////////  ///   ///  ///  /////////
echo ///   ///  ///    /// ///       ///  ///   ///  ///    /// ///         //
echo ///   ///  ///    /// ///       ///  ///   ///  ///     //////        //
echo ///   ///   ///////   ///       ///  ///   ///  ///        ///  ///////
echo.
echo.
pause
goto startpicturevs

:startpicturevs
cls
echo.
echo.
echo ///            ///     /////////
echo ///           ///     ///
echo ///          ///     ///
echo  ///       ///      //////////
echo  ///      ///              //
echo   ///   ///               //
echo    //////         /////////
echo.
echo.
pause
goto startpicturezombies

:startpicturezombies
cls
echo.
echo.
echo /////////  ////////     ////  ////   ///////     /////////  /////////      //////////
echo      ///  ///    ///  /// ///// ///  ///  ///       ///     ///           //
echo     ///   ///    ///  ///       ///  ///  ///       ///     ///          //
echo    ///    ///    ///  ///       ///  /////////      ///     ///////     ///////////
echo   ///     ///    ///  ///       ///  ///   ////     ///     ///                 //
echo  ///      ///    ///  ///       ///  ///   ///      ///     ///                //
echo ////////   ///////    ///       ///  ////////    /////////  /////////  /////////
echo.
echo.
pause
goto humansvszombies

:humansvszombies
cls
echo =========================================
echo.
echo                  HUMANS VS ZOMBIES
echo.
echo.
echo. created by PopcornPro           v0.1
echo.
echo =========================================
pause
goto smil

:smil
cls
echo MMMMMMMMMMMMMMMNNNmmddhhyysssooo+++/////:::::::-----:::::::::////+++ooosssyyhhhddmmNNMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMNNmddhhyyssoo+++//:::----....``````````````````.....---:::///++oossyyhhddmmNNMMMMMMMMMMM
echo MMMMMMMMNNmmdhhyyssoo+///::--...```            .+++++++.         ````..---:://++oossyhhddmNNMMMMMMMM
echo MMMMMMNmmdhhyssoo+//::--..``            ..+hhhhdNNNNNNNdhhhd+..         ``...--://++ossyyhddmNNMMMMM
echo MMMNNmdhhysso++/::--..``             /oodhysssoooooooossssyyhdmoo:           ``..-:://+oosyyhdmmNMMM
echo MNmmdhyysoo+/::-..``             ./hho+//::::::::::::::::::///+ooshd/`          ``..-::/++ossyhddmNN
echo mmdhyyso+//:--.``               +so::--------------------------:::/oss+             `..-://+ossyhddm
echo dhyyso+//:-..`               ./h/---......................./+++++++--:+h:`            ``.-::/+ossyhd
echo hyso++/:-..`                -ym-....yhhhhhhs............/hyNMMMMMMMh+:--N/              ``.-://+osyy
echo yso+/::-.`                 /so..+dMMMMMMMMMMMMy/......+mMMMMdyyymMMMMMd.-os/              `..-:/+oos
echo so+/:-..`                 `N+.:dNMMMNo::::yNMMMNy.../dMMMN::.   -:/NMMNh-.om`              ``.-://+o
echo o+/:-.``                 :M..:sMMMNs       `/MMMNo-./MMMmo          dMMMs:.-M-               `.-://+
echo +/:-.``                 `/m..oMMMNy          -hMMM/./MMMy           dMMMM+.-m:`               `.-://
echo /:--.`                  sd...oMMM+            yMMM/./MMMy           dMMMM+...mo               ``.-:/
echo /:-.`                   sd...oMMMNy          -hMMM/./MMMNd         -mMMM/-...mo                `.-::
echo /:-.`                   sd...:sMMMNs       .sMMMNo-.:oMMMNss:   /syMMMmo-....mo                ``.-:
echo ::-.`                   sd....:dNMMMNds:::yNMMMNh.....-smMMMNNNNMMMMmdy......mo                ``.-:
echo /:-.`                   sd......+dMMMMMMMMMMMMy/........:ooNMMMMMMNo:-.......mo                ``.-:
echo /:-.`                   sd.......---hhhhhhhs--.............--------..........mo                `.--:
echo /:-..`                  oh-.................-------------------------.......-:.                `.-:/
echo +/:-.`                   :M..........+ooooossMMMMMMMMMMMMMMMMMMMMMMM/......-M-                `.-::/
echo +//:-.`                  -m:-.......dNMMMMMMMMMMMMMMMMMMMMMMMMMMMNNm/.....-:o`               `.--:/+
echo o++/:-.``                  M+.......smMMMMMMMssssssssssssssssssss+-.......oN                `.--:/+o
echo soo+/:-..`                 .oo:......::::::::.........................../s+.              ``.-://+os
echo yyso+/::-.``                 +m......................................-:yM/               `.--:/+oosy
echo dhysoo+/::-.``                .y+:---..........................-----:/oh.              `..-:/++osyyh
echo mdhhysoo+/::-..`                :shh:-------..........-.--------::/hds:             ``.--:/++osyyhdm
echo NNmdhhysoo+//:--.``               `/ysso/::::::::::::::::::///+ssys              ``..-::/++osyyhdmmN
echo MMNNmddhyysoo+//:--..``              -:/ddyssooooooooooossyyhdd/:-            ``..-::/++ossyhhdmmNMM
echo MMMMMNmmdhhyssoo+//::--..``               :ssssssNNNNNssssss:            ```..--://++ossyyhddmNNMMMM
echo MMMMMMMNNmmdhhyysso++//::--...```                -----             ```...--:://++oossyhhddmNNMMMMMMM
echo MMMMMMMMMMMNNmddhhyyssoo++///::---....```````          ```````....---::://+++oosyyhhddmmNNMMMMMMMMMM
echo MMMMMMMMMMMMMMNNmmddhhhyyssooo+++///:::::-------------------::::////+++oosssyyhhddmmNNMMMMMMMMMMMMMM
pause
goto menu

:menu
cls
echo ==================================
echo   [O_O]  Humans VS Zombies  [00]
echo ==================================
echo Player %name%  MENU Level %exp%
echo ==================================
echo Press (1) kill arena
echo Press (2) story mode
echo Press (3) weapon shop 
echo Press (4) city 
echo Press (5) your stats
echo Press (6) help and more
echo.Press (a) to save the game
echo Press (b) to exit
set /p press=
if %press% == 1 goto lobby
if %press% == 2 goto storymode
if %press% == 3 goto shop1
if %press% == 4 goto city
if %press% == 5 goto stats
if %press% == 6 goto help1 
if %press% == a goto save
if %press% == b exit

:city
cls
echo =============================================
echo CITY                       Your money %money%
echo =============================================
echo Press (1) buy a house for $10000
if %housestatus% EQU active echo Press (2) go to house
echo Press (a) go to menu    
echo =============================================
echo           ##
echo          # 
echo     ___I I___________________
echo.   /                         \
echo.  /___________________________\
echo.   (                        )
echo.   (           ___          )
echo.   (    [ ]   (  .)   [ ]   )
echo    (__________(   )_________)
echo                ///
echo                ///
echo                ///
echo              ///
echo              ///
echo               ///
echo IIIIIIIIIIIIII///IIIIIIIIIIIIIIIII
echo
set /p house=
if %house% == 1 goto housebuy
if %house% == a goto menu

:house
cls
echo ====================================================================
echo House     
echo ====================================================================
echo Press (1) go to menu                                            
echo.Press (2) see your sick brother
echo Press (3) see your dog if you have one 
if %kadodilstatus% EQU active echo Press (4) talk with your brother
if %kadodilstatus% EQU active echo      ____
if %kadodilstatus% EQU active echo     /    \     
if %kadodilstatus% EQU active echo     ==========                  
if %kadodilstatus% EQU active echo     I O O I    Hello %name%                           [HOME ]
if %kadodilstatus% EQU active echo     I  I  I                                           [SWEET]
if %kadodilstatus% EQU active echo     \ === /                                           [ HOME]
if %kadodilstatus% EQU active echo    ///////////      
if %kadodilstatus% EQU active echo  ///  ///// ///  
if %kadodilstatus% EQU active echo ____________________
if %kadodilstatus% EQU active echo  I    /////       I
if %kadodilstatus% EQU active echo  I   // //        I
if %kadodilstatus% EQU active echo  I (  )( )        I
echo ///////////////////////////////////////////////////////////////////// 
set /p home=
if %home% == 1 goto menu
if %home% == 2 goto brother
if %home% == 3 goto dog
if %home% == 4 goto talk

:talk
cls
echo ================================================================
echo TALK WITH YOUR BROTHER       answer Y for yes or answer N for no
echo ================================================================
echo Brother- hello %name% do you wanna talk?                              
set /p talk=you-
if %talk% == y goto yes0001
if %talk% == n goto house

:yes0001
cls
echo ================================================================
echo TALK WITH YOUR BROTHER       answer Y for yes or answer N for no
echo ================================================================
echo Brother- are you fiel good today?                             
set /p talk=you-
if %talk% == y goto answer0001
if %talk% == n goto answer0002

:answer0002
echo ================================================================
echo TALK WITH YOUR BROTHER       answer Y for yes or answer N for no
echo ================================================================
echo Brother> oohhh... that is not good                            
pause
goto yes0002

:answer0001
cls
echo ================================================================
echo TALK WITH YOUR BROTHER       answer Y for yes or answer N for no
echo ================================================================
echo Brother- nice to here                             
pause
goto yes0002

:yes0002
cls
echo ================================================================
echo TALK WITH YOUR BROTHER       answer Y for yes or answer N for no
echo ================================================================
echo Brother- do you have a dog?                              
set /p talk=you-
if %talk% == y goto answer0003

:answer0003
cls
echo ================================================================
echo TALK WITH YOUR BROTHER       answer Y for yes or answer N for no
echo ================================================================
echo Brother> nice                            
pause
goto yes0003

:yes0003
cls
echo ================================================================
echo TALK WITH YOUR BROTHER       answer Y for yes or answer N for no
echo ================================================================
echo Brother- can you say anything else than y or n                             
set /p talk=you-
if %talk% == y goto talkend
if %talk% == n goto talkend

:talkend
cls
echo ================================================================
echo TALK WITH YOUR BROTHER       answer Y for yes or answer N for no
echo ================================================================
echo Brother> you are anoying!!! see you later                         
pause
goto house


:dog
cls
echo =======================================================================================================
echo DOG 
echo =======================================================================================================
echo Press (1) dog shop                                            /////////////////DOG STATUS//////////////   
echo Press (2) go to your house                                    /// name %dogname%                    ///
echo Press (3) dog facts                                           /// hp %doghp%                        ///
echo                                                               /// level %dogexp%                    ///
echo                                                               ///                                   ///
echo           Your DOG     WOW       YOU                          ///                                   ///
echo                      WOW        [O_O]                         ///                                   ///
echo                 ( O)=            /I\                          ///                                   ///
echo         /(((((((I               / I \                         ///                                   ///
echo        / ========                / \                          /// Your dog LOVE you %doglove%/100   ///
echo          I      I               /   \                         /// Your dog are happy                ///
echo ///////////////////////////////////////////////////////////////////////////////////////////////////////
set /p press=
if %press% == 1 goto dogshop
if %press% == 2 goto house
if %press% == 3 goto dogfacts

:dogfacts
cls
echo ========================================================
echo DOG FACTS dog name %dogname% hp %doghp% level %dogexp%
echo ========================================================
echo (buy a house for 10000 and get a dog) 
echo (give the dog a name in the shop)
echo (when you buy dog food you dog will love you)
echo (your can use a dog in figths)
echo (if you use dog attacks your dog and you will lose life)
echo (your dog attack a zombie 2 times)
echo
pause
goto dog

:dogshop
cls
echo ===================================
echo DOG SHOP        your money %money%
echo ===================================
echo Press (1) buy 10 dog hp for 100
echo Press (2) buy 10 dog level for 1000
echo Press (3) buy 1 dog name for 1000
echo Press (4) buy 10 dog food for 500
echo Press (a) go to your dog
echo Press (b) save
set /p dog=
if %dog% == 1 goto doghpbuy
if %dog% == 2 goto doglevelbuy
if %dog% == 3 goto dognamebuy
if %dog% == 4 goto dogfoodbuy
if %dog% == a goto dog
if %dog% == b goto save

:dogwrongbuy 
cls
echo ===================
echo You need more money
echo ===================
pause
goto dogshop

:dogname1
cls
echo =====================
echo Hello! what will you 
echo have your dog name 
echo set to?
echo =====================
set /p dogname=
echo your dogs name have been set to %dogname%
goto dogshop

:brother
cls
echo ====================================================================
echo House     Your brother need some medicin from the doctor 
echo           but the price is $15000. You can buy the medicin
echo           in the shop. your brother need the medicin (kadodil)
echo ====================================================================
echo Press (1) go back          
echo.        Z
echo         Z
echo       Z
echo      Z                    
echo   ====\   ( )                 
echo.  ]    \\\\( )\\\\\\\\\\\\\\\\
echo    ===I  \\\( )\\\\\\\\\\\\\\\\                  
echo I ]    /\\\\(  )\\\\\\\\\\\\\\\\    
echo I ====/   \\\\\\\\\\\\\\
echo =================================
echo I                               I
echo I                               I
echo I                               I
echo ///////////////////////////////////////////////////////////////////// 
set /p home=
if %home% == 1 goto house

:stats
cls
echo ========================
echo STATS
echo ========================
echo STATS FOR ARENA
echo ========================
echo your name         %name%
echo your kills        %exp%
echo your level        %exp%
echo your money        %money%
echo ========================
echo STATS FOR DOG
echo ========================
echo dog level         %dogexp%
echo dog hp            %doghp%
echo dog love          %doglove%
echo ========================
echo STATS FOR STORY MODE
echo ========================
echo your
echo your
pause
goto menu

:shop1
cls
echo ==================================
echo SHOP           Your money %money%
echo ==================================
echo Press (1) weapons 
echo Press (2) 
echo Press (3) medecin
echo Press (a) go back to menu
echo. 
set /p shop=
if %shop% == 1 goto shop
if %shop% == 2 goto 
if %shop% == 3 goto shopmedecin
if %shop% == a goto menu

:shopmedecin
cls
echo ===========================================
echo SHOP           Your money %money%
echo ===========================================
echo.          I O OI      Hello will you buy
echo.          \ ===/      medecine? so Press (1)
echo         ////  /////
echo        // ////// //
echo        // ////// //
echo           //////
echo    ___________________
echo     I     //////    I
echo     I     //  //    I
echo     I    ///  ///   I
echo
set /p ko=
if %ko% == 1 goto shopmedecin1

:shopmedecin1
cls
echo ============================================
echo SHOP
echo ============================================
echo.     / \
echo.    I(1)I
echo.    I   I
echo    _\___/_____________________________________
echo
echo
echo
echo Press (1) buy kadodil for $15000
echo
echo
echo
echo
set /p jo=
if %jo% == 1 goto kadodilbuy

:shop
cls
echo ==================================
echo SHOP           Your money %money%
echo ==================================
echo Press (1) pay $1000 for a knife
echo Press (2) pay $1000 for a ak47
echo Press (3) pay $1000 for C4
echo Press (a) go back
echo.
set /p shop=
if %shop% == 1 goto knifebuy
if %shop% == 2 goto ak47buy 
if %shop% == 3 goto C4buy
if %shop% == a goto shop

:doghpbuy
if %money% lss 100 goto dogwrongbuy 
set /a money=%money%-100
set /a doghp=%doghp%+10
goto dogshop

:doglevelbuy
if %money% lss 100 goto dogwrongbuy 
set /a money=%money%-1000
set /a dogexp=%dogexp%+10
goto dogshop

:dognamebuy
if %money% lss 100 goto dogwrongbuy 
set /a money=%money%-1000
goto dogname1

:dogfoodbuy
if %money% lss 500 goto dogwrongbuy 
set /a money=%money%-500
set /a doglove=%doglove%+10
goto dogshop

:kadodilbuy
if %money% lss 15000 goto shopmedecin
set /a money=%money%-15000
set kadodilstatus=active
goto menu

:housebuy
if %money% lss 10000 goto menu
set /a money=%money%-10000
set housestatus=active
goto menu

:knifebuy
if %money% lss 1000 goto menu
set /a money=%money%-1000
set c4status=active
goto menu

:ak47buy
if %money% lss 1000 goto menu
set /a money=%money%-1000
set ak47status=active
goto menu

:c4buy
if %money% lss 1000 goto menu
set /a money=%money%-1000
set c4status=active
goto menu

:lobby
cls
echo ==================================
echo    [O_O] Humans VS Zombies  [00]
echo ==================================
echo Player %name%  LOBBY Level %exp%
echo ==================================
echo. Press (1) kill a normal zombie
echo  Press (2) kill a zombieboss
echo  Press (3) weapon shop
echo  Press (4) go to menu
echo. Press (a) to save the game
set /p press=
if %press% == 1 goto warzone
if %press% == 2 goto boss
if %press% == 3 goto shop
if %press% == a goto save

:boss
cls
if %killbosshp% leq 0 goto bossloss
if %bosshp% leq 0 goto bosswin
echo ===============================================================================
echo Player %name% Hp %killbosshp% $ %money% Level %exp% VS ZombieBoss hp %bosshp%
echo ===============================================================================
echo.   YOU                ZOMBIE BOSS
echo.   \ /              AAAR  \/
echo.  [O_O]                  (00]
echo.   /I\                    /I\
echo.  / I \                  / I \
echo.   / \                    / \
echo.  /   \                  /   \           
echo ===============================================================================
echo (you can only use (a) = heal 4 times) 
echo Press (1) for Kick
echo Press (2) for Punch
echo Press (a) for Heal 
set /p option=
if %option% == 1 goto bosskick   
if %option% == 2 goto bosspunch
if %option% == a goto bossheal 


:help1
cls
echo ============================
echo help
echo ============================
echo Press (1) if your game close
echo Press (a) go to menu
set /p s=
if %s% == 1 goto helpclose
if %s% == a goto menu

:helpclose
cls
echo =================
echo your game close
echo =================
echo dont type random 
echo words like jiiu
echo where you can type
echo stuff
pause
goto help

:warzone
cls
if %hp% leq 0 goto loss
if %zomhp% leq 0 goto win
echo ============================================================================
echo Player %name% Hp %hp% $ %money% Level %exp% VS Zombie zombie hp %zomhp%
echo ============================================================================
echo.
echo.   YOU                   ZOMBIE   ZOMBIE
echo.  [O_O]                  (0.0]    [0,0)
echo.   /I\                    /I\      /I
echo.  / I \                    I \    / I   ZOMBIE
echo.   / \                    / \      / \   [00)
echo.  /   \                  /   \    /   I   _\___           
echo =============================================================================== 
echo STARTER WEAPONS   
echo ===============================================================================                      
echo Press (1) for Kick                                 
echo Press (2) for Punch                                
echo Press (3) for Heal
echo ===============================================================================                                 
echo BUY THIS WEAPONS  
echo ===============================================================================                                 
if %ak47status% EQU active echo (a) for akb 47          
if %c4status% EQU active echo (b) for C4                
if %knifestatus% EQU active echo (c) for knife   
echo =============================================================================== 
echo DOG ATTACKS                                                      dog hp %doghp% 
echo ===============================================================================
if %housestatus% EQU active echo (d) for dog attack 1
if %housestatus% EQU active echo (e) for dog attack 2    
echo ===============================================================================
set /p option=
if %option% == 1 goto Kick   
if %option% == 2 goto Punch
if %option% == 3 goto Heal
if %option% == a goto ak47   
if %option% == b goto c4
if %option% == c goto knife
if %option% == d goto dogattack1
if %option% == e goto dogattack2
if %option% == f goto dogattack3

:save
(
echo %storyzomhp1%
echo %storybosshp1%
echo %storyhp%
echo %doghp%
echo %dogexp%
echo %doglove%
echo %dogname%
echo %kadodilstatus%
echo %knifestatus%
echo %c4status%
echo %ak47status%
echo %name%
echo %exp%
echo %zomhp%
echo %money%
echo %housestatus%
)>save.dlb
goto menu

:kadodil
if not %kadodilstatus% EQU active goto city
if %kadodillimit% LEQ 0 goto city
set /a kadodillimit=%kadodillimit%-1
goto city

:house
if not %housestatus% EQU active goto city
if %houselimit% LEQ 0 goto city
set /a houselimit=%houselimit%-1
goto city

:dogattack1
if %doghp% LEQ 0 goto warzone
set /a zomhp=%zomhp%-%Random% %%19-6%
goto zomdogattack

:dogattack2
if %doghp% LEQ 0 goto warzone
set /a zomhp=%zomhp%-%Random% %%9-3%
goto dogattack1a
:dogattack1a
set /a zomhp=%zomhp%-%Random% %%10-7%
goto zomdogattack
  
:ak47
if not %ak47status% EQU active goto warzone
if %ak47limit% LEQ 0 goto warzone
set /a zomhp=%zomhp%-%random% %%17-8%
set /a ak47limit=%ak47limit%-1
goto zomattack

:c4
if not %c4status% EQU active goto warzone
if %c4limit% LEQ 0 goto warzone
set /a zomhp=%zomhp%-%random% %%19-4%
set /a c4limit=%c4limit%-1
goto zomattack

:knife
if not %knifestatus% EQU active goto warzone
if %knifelimit% LEQ 0 goto warzone
set /a zomhp=%zomhp%-%random% %%15-10%
set /a knifelimit=%knifelimit%-1
goto zomattack

:Kick
set /a zomhp=%zomhp%-%Random% %%16-7%
goto zomattack


:Punch
set /a zomhp=%zomhp%-%Random% %%17-8%
goto zomattack


:Heal
set /a hp=%hp%+%Random% %%22-9%
goto zomattack

:zomattack
set /a hp=%hp%-%Random% %%19-6%
goto warzone

:zomdogattack
set /a doghp=%doghp%-%Random% %%30-6%
set /a hp=%hp%-%Random% %%10-6%
goto warzone

:bosskick
set /a bosshp=%bosshp%-%Random% %%32-10%
goto bossattack


:bosspunch
set /a bosshp=%bosshp%-%Random% %%35-12%
goto bossattack


:bossheal
if %bossheallimit% leq 0 goto boss
set /a killbosshp=%killbosshp%+61
set /a bossheal=%bossheal%-1
goto bossattack

:bossattack
set /a killbosshp=%killbosshp%-%Random% %%30-9%
goto boss

:bossloss
set /a dogexp=%dogexp%-5
set /a doglove=%doglove%-3
set /a zomexp=%zomexp%+2
set /a money=%money%-100
set killbosshp=300
set bosshp=500
set doghp=50
set gunlimit=3
set bossheallimit=4
echo =================
echo mission failed!!!
echo =================
echo Press (1) play again
echo Press (2) go to lobby
echo Press (3) exit
set /p ho=
if %ho% == 1 goto boss
if %ho% == 2 goto lobby
if %ho% == 3 exit

:bosswin
set /a dogexp=%dogexp%+4
set /a doglove=%doglove%+5
set /a exp=%exp%+5
set /a money=%money%+100
set killbosshp=300
set doghp=50
set bosshp=500
set gunlimit=3
echo ========================================
echo you won the fight!!! good work soldiere.
echo you saved alot of peoples today from that
echo zombieboss
echo ========================================
echo Press (1) play again
echo Press (2) go to lobby
echo Press (3) exit
set /p ho=
if %ho% == 1 goto boss
if %ho% == 2 goto lobby 
if %ho% == 3 exit  

:loss
set /a dogexp=%dogexp%+1
set /a doglove=%doglove%+2
set /a zomexp=%zomexp%+1
set /a money=%money%-30
set hp=100
set doghp=50
set zomhp=100
set gunlimit=3
set ak47limit=3
set c4limit=1
set knifelimit=100
echo =================
echo mission failed!!!
echo =================
echo Press (1) play again
echo Press (2) go to lobby
echo Press (3) exit
set /p ho=
if %ho% == 1 goto warzone
if %ho% == 2 goto lobby
if %ho% == 3 exit

:win
set /a dogexp=%dogexp%+1
set /a doglove=%doglove%+2
set /a exp=%exp%+1
set /a money=%money%+60
set hp=100
set doghp=50
set zomhp=100
set gunlimit=3
set ak47limit=3
set c4limit=1
set knifelimit=100
echo ========================================
echo you won the fight!!! good work soldiere.
echo you saved alot of peoples
echo ========================================
echo Press (1) play again
echo Press (2) go to lobby
echo Press (3) exit
set /p ho=
if %ho% == 1 goto warzone
if %ho% == 2 goto lobby     
if %ho% == 3 exit     




                                                                                                                   