@echo off
@TITLE LG Optimus 4X HD - All In One Toolkit 2.1
color 0c
cd Files


:INTRO_SW
echo _______________________________________________________________________________
echo [   -----------------------------------------------------------------------   ]
echo [   '                            Requirement!                             '   ]
echo [   '---------------------------------------------------------------------'   ]
echo [   ' To Use This Tookit, Your P880 Have To Be On Android 4.1.2 Or Above. '   ]
echo [   ' If You Are Not Sure What Your Software Version Is, Check:           '   ]
echo [   '                                                                     '   ]
echo [   '           Settings - About Phone - Android-Version                  '   ]
echo [   '                                                                     '   ]
echo [   ' If You Use A Firmware Lower Than 4.1.2, You Have To Update It.      '   ]
echo [   ' You Can Update Via Using LG PC Suite Or Manually Via KDZ Flasher.   '   ]
echo [   ' Now You Can Choose From The Following:                              '   ]
echo [   '                                                                     '   ]
echo [   '   1= I Want To Flash A KDZ With KDZ Flashing Method (Opens A Link)  '   ]
echo [   '   2= I Am On Android 4.1.2 Or Above                                 '   ]
echo [   '---------------------------------------------------------------------'   ]
echo [_____________________________________________________________________________]
echo.                                                                               
set /p s=Choose A Number: 
if %s%==1 (goto KDZ_Flash)
if %s%==2 (goto INTRO)


:KDZ_Flash
start http://forum.xda-developers.com/showthread.php?t=2069723
goto INTRO


color 0a
:INTRO
color 0a
cls
echo _______________________________________________________________________________
echo [       -----------------------------------------------------------------
echo [       '                   Welcome, %USERNAME%                                
echo [       '---------------------------------------------------------------'     ]
echo [       ' Thank You Very Much For Using My Tool, I Hope You Like It! :D '     ]
echo [       ' Before You Start You Need To Install "ADB Drivers".           '     ]
echo [       ' You Can Install Them From This Tool.                          '     ]
echo [       ' Now Choose From The Following:                                '     ]
echo [       '                                                               '     ]
echo [       '          1= Install ADB Drivers.                              '     ]
echo [       '          2= I Have Already Installed Them.                    '     ]
echo [       '---------------------------------------------------------------'     ]
echo [_____________________________________________________________________________]
echo.                                                                               
set /p y=Choose A Number: 
if %y%==1 (goto ADB_D)
if %y%==2 (goto MAIN)


:ADB_D
DRIVERS
pause
goto done


:MAIN
cls
echo._______________________________________________________________________________
echo.[             -----------------------------------------------                 ]
echo.[             '   All In One Toolkit For LG Optimus 4X HD   '                 ]
echo.[             '                  Main Menu                  '                 ]
echo.[             '---------------------------------------------'                 ]
echo.[             '          Made By OS_Hacking & Afro          '                 ]
echo.[             '      Updated JoinTheRealms & balloon27      '                 ]
echo.[             '---------------------------------------------'                 ]
echo.[_____________________________________________________________________________]
echo.
echo.
echo  1 -  Root
echo  2 -  Unlock Bootloader (For JB EUR-xxx Devices)
echo  3 -  Flash  TWRP Recovery 2.7.0.0
echo  4 -  Flash  TWRP Recovery 2.7.0.0 (MultiROM)
echo  5 -  Flash  CWM Touch Recovery 6.0.4.5
echo  6 -  Flash  Original Recovery
echo  7 -  Flash  Un-Secure Boot
echo  8 -  Flash  Secure (Original) Boot
echo  9 -  Flash  MultiROM v12
echo  10-  Open Kernel Flash Menu
echo  11-  Show Changelog
echo  x -  Exit
echo.
set /p X=Choose A Number: 
if %x%==1 (goto ROOT)
if %x%==2 (goto BL)
if %x%==3 (goto TWRP)
if %x%==4 (goto TWRP_MR)
if %x%==5 (goto CWM)
if %x%==6 (goto OR_R)
if %x%==7 (goto BOOT)
if %x%==8 (goto OR_BOOT)
if %x%==9 (goto MR)
if %x%==10 (goto FLASH_KERNEL)
if %x%==11 (goto CHANGELOG)
if %x%==x (goto x)


:s
echo Please Choose A Valid Number!
echo.
pause
goto MAIN


:ROOT
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '       Please Reboot Your Device Into Recovery        '             ]
echo [        '             Connect Your Device To PC                '             ]
echo [        '      Then Select "Update Via ADB" And Continue       '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
pause
adb sideload superuser.zip
goto DONE


:BL
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        ' Now Connect Your Phone With "USB-Debugging" Enabled. '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
adb reboot oem-unlock
goto DONE


:TWRP
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        ' Now connect your phone with "USB-Debugging" enabled. '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
pause
echo. Copying files, Please wait ... 
echo.
adb push TWRP_2700.img /mnt/sdcard/TWRP_2700.img
adb shell "su -c 'dd if=/mnt/sdcard/TWRP_2700.img of=/dev/block/mmcblk0p1'"
adb shell "rm /mnt/sdcard/TWRP_2700.img"
goto DONE


:TWRP_MR
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        ' Now connect your phone with "USB-Debugging" enabled. '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
pause
echo. Copying files, Please wait ... 
echo.
adb push TWRP_MR.img /mnt/sdcard/TWRP_MR.img
adb shell "su -c 'dd if=/mnt/sdcard/TWRP_MR.img of=/dev/block/mmcblk0p1'"
adb shell "rm /mnt/sdcard/TWRP_MR.img"
goto DONE


:BOOT
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        ' Now connect your phone with "USB-Debugging" enabled. '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
pause
echo. Copying files, Please wait ... 
echo.
adb push UNS_BOOT.img /mnt/sdcard/UNS_BOOT.img
adb shell "su -c 'dd if=/mnt/sdcard/UNS_BOOT.img of=/dev/block/mmcblk0p2'"
adb shell "rm /mnt/sdcard/UNS_BOOT.img"
goto DONE


:OR_BOOT
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        ' Now Connect Your Phone With "USB-Debugging" Enabled. '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
pause
echo. Copying files, Please wait ... 
echo.
adb push OR_BOOT.img /mnt/sdcard/OR_BOOT.img
adb shell "su -c 'dd if=/mnt/sdcard/OR_BOOT.img of=/dev/block/mmcblk0p2'"
adb shell "rm /mnt/sdcard/OR_BOOT.img"
goto DONE


:CWM
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        ' Now connect your phone with "USB-Debugging" enabled. '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
pause
echo. Copying files, Please wait ... 
echo.
adb push O4X_CWM_6045.img /mnt/sdcard/O4X_CWM_6045.img
adb shell "su -c 'dd if=/mnt/sdcard/O4X_CWM_6045.img of=/dev/block/mmcblk0p1'"
adb shell "rm /mnt/sdcard/O4X_CWM_6045.img"
goto DONE


:OR_R
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        ' Now Connect Your Phone With "USB-Debugging" Enabled. '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
pause
echo Copying files, Please wait... 
echo.
adb push O4X_OR_R.img /mnt/sdcard/O4X_OR_R.img
adb shell "su -c 'dd if=/mnt/sdcard/O4X_OR_R.img of=/dev/block/mmcblk0p1'"
adb shell "rm /mnt/sdcard/O4X_OR_R.img"
goto DONE


:MR
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '    Please Reboot Your Device Into TWRP Recovery      '             ]
echo [        '        Choose "Advanced", Then "ADB Sideload"        '             ]
echo [        '              Connect Your Device To PC               '             ]
echo [        ' Wait And Only Continue If All Drivers Are Installed! '             ]
echo [        '              "Swipe To Start Sideload"               '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb sideload MRv12.zip
echo.
echo.
echo.
pause
echo.
echo.
echo.
echo _______________________________________________________________________________
echo [     ------------------------------------------------------------------------]
echo [     '           Done - Flashed MultiROM Successfully.               '       ]
echo [     '---------------------------------------------------------------'       ]
echo [     ' Please Reboot Your Device Into Recovery To Get The Features!  '       ]
echo [     '                                                               '       ]
echo [     '---------------------------------------------------------------'       ]
echo [_____________________________________________________________________________]


:FLASH_KERNEL
cls
echo _______________________________________________________________________________
echo [        -------------------------------------------------------------        ]
echo [        '          All In One Toolkit For LG Optimus 4X HD          '        ]
echo [        '                        Kernel Menu                        '        ]
echo [        '---------------------------------------------------------- '        ]
echo [        '             Pick the kernel you wish to flash             '        ]
echo [        '-----------------------------------------------------------'        ]
echo [_____________________________________________________________________________]
echo.
echo.
echo  1 - Flash  JoinTheRealms CopyCat Kernel v4.2
echo  2 - Flash  Iodak Kernel V8
echo  3 - Flash  Iodak Kernel V9
echo  4 - Flash  Iodak Kernel V9.5
echo  5 - Flash  Iodak Kernel V9.95
echo  6 - Flash  Optimus Prime Kernel V2.7
echo  7 - Flash  Optimus Play! Kernel V2.53
echo  8 - Flash  WerewolfJB Kernel V008b
echo  9 - Flash  CM10.1 Stock Kernel (For CM10.1 MultiROM)
echo  M - Go Back To Main Menu
echo  x - Exit
echo.
set /p z=Choose A Number: 
if %z%==1 (goto CCK_v4.2)
if %z%==2 (goto IODAK_v8)
if %z%==3 (goto IODAK_v9)
if %z%==4 (goto IODAK_v9.5)
if %z%==5 (goto IODAK_v9.95)
if %z%==6 (goto PRIME_v2.7)
if %z%==7 (goto PLAY_v2.53)
if %z%==8 (goto WEREWOLF_v008b)
if %z%==9 (goto CM_STOCK_MR)
if %z%==M (goto MAIN)
if %z%==x (goto x)


:CCK_v4.2
cls
adb push stuffForAndroid /data/media/tmp
adb push zImages\CCKv42 /data/media/tmp/kernel
adb push modules\cck4-2 /system/lib/modules/
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '       Please Reboot Your Device Into Recovery        '             ]
echo [        '             Connect Your Device To PC                '             ]
echo [        ' Then Select "Install Zip From Sideload" And Continue '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb shell "su -c 'chmod -R 777 /data/media/tmp/*'"
adb shell "su -c 'echo chsnzImg=CCKv42 >> /data/media/tmp/setVar.sh'"
adb shell "su -c 'cd /data/media/tmp'"
adb shell "su -c 'sh /data/media/tmp/setVar.sh'"
adb shell "su -c 'sh /data/media/tmp/kernel/kernel.sh'"
pause
echo.
echo.
echo.
goto DONE_KERNEL


:IODAK_v8
cls
adb push stuffForAndroid /data/media/tmp
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '       Please Reboot Your Device Into Recovery        '             ]
echo [        '             Connect Your Device To PC                '             ]
echo [        ' Then Select "Install Zip From Sideload" And Continue '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb shell "su -c chmod -R 777 /data/media/tmp/*"
adb shell "su -c echo chsnzImg=IODAKv8 >> /data/media/tmp/setVar.sh"
adb shell "su -c cd /data/media/tmp"
adb shell "su -c sh /data/media/tmp/setVar.sh"
adb shell "su -c sh /data/media/tmp/kernel/kernel.sh"
echo.
echo.
echo.
pause
goto DONE_KERNEL


:IODAK_v9
cls
adb push stuffForAndroid /data/media/tmp
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '       Please Reboot Your Device Into Recovery        '             ]
echo [        '             Connect Your Device To PC                '             ]
echo [        ' Then Select "Install Zip From Sideload" And Continue '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb shell "su -c chmod -R 777 /data/media/tmp/*"
adb shell "su -c echo chsnzImg=IODAKv9 >> /data/media/tmp/setVar.sh"
adb shell "su -c cd /data/media/tmp"
adb shell "su -c sh /data/media/tmp/setVar.sh"
adb shell "su -c sh /data/media/tmp/kernel/kernel.sh"
echo.
echo.
echo.
pause
goto DONE_KERNEL



:IODAK_v9.5
cls
adb push stuffForAndroid /data/media/tmp
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '       Please Reboot Your Device Into Recovery        '             ]
echo [        '             Connect Your Device To PC                '             ]
echo [        ' Then Select "Install Zip From Sideload" And Continue '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb shell "su -c chmod -R 777 /data/media/tmp/*"
adb shell "su -c echo chsnzImg=IODAKv95 >> /data/media/tmp/setVar.sh"
adb shell "su -c cd /data/media/tmp"
adb shell "su -c sh /data/media/tmp/setVar.sh"
adb shell "su -c sh /data/media/tmp/kernel/kernel.sh"
echo.
echo.
echo.
pause
goto DONE_KERNEL



:IODAK_v9.95
cls
adb push stuffForAndroid /data/media/tmp
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '       Please Reboot Your Device Into Recovery        '             ]
echo [        '             Connect Your Device To PC                '             ]
echo [        ' Then Select "Install Zip From Sideload" And Continue '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb shell "su -c chmod -R 777 /data/media/tmp/*"
adb shell "su -c echo chsnzImg=IODAKv995 >> /data/media/tmp/setVar.sh"
adb shell "su -c cd /data/media/tmp"
adb shell "su -c sh /data/media/tmp/setVar.sh"
adb shell "su -c sh /data/media/tmp/kernel/kernel.sh"
echo.
echo.
echo.
pause
goto DONE_KERNEL


:PRIME_v2.7
cls
adb push stuffForAndroid /data/media/tmp
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '       Please Reboot Your Device Into Recovery        '             ]
echo [        '             Connect Your Device To PC                '             ]
echo [        ' Then Select "Install Zip From Sideload" And Continue '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb shell "su -c chmod -R 777 /data/media/tmp/*"
adb shell "su -c echo chsnzImg=PRIMEv27 >> /data/media/tmp/setVar.sh"
adb shell "su -c cd /data/media/tmp"
adb shell "su -c sh /data/media/tmp/setVar.sh"
adb shell "su -c sh /data/media/tmp/kernel/kernel.sh"
echo.
echo.
echo.
goto DONE_KERNEL


:PLAY_v2.53
cls
adb push stuffForAndroid /data/media/tmp
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '       Please Reboot Your Device Into Recovery        '             ]
echo [        '             Connect Your Device To PC                '             ]
echo [        ' Then Select "Install Zip From Sideload" And Continue '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb shell "su -c chmod -R 777 /data/media/tmp/*"
adb shell "su -c echo chsnzImg=PLAYv253 >> /data/media/tmp/setVar.sh"
adb shell "su -c cd /data/media/tmp"
adb shell "su -c sh /data/media/tmp/setVar.sh"
adb shell "su -c sh /data/media/tmp/kernel/kernel.sh"
echo.
echo.
echo.
goto DONE_KERNEL


:WEREWOLF_v008b
cls
adb push stuffForAndroid /data/media/tmp
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '       Please Reboot Your Device Into Recovery        '             ]
echo [        '             Connect Your Device To PC                '             ]
echo [        ' Then Select "Install Zip From Sideload" And Continue '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb shell "su -c chmod -R 777 /data/media/tmp/*"
adb shell "su -c echo chsnzImg=WEREWOLFv008b >> /data/media/tmp/setVar.sh"
adb shell "su -c cd /data/media/tmp"
adb shell "su -c sh /data/media/tmp/setVar.sh"
adb shell "su -c sh /data/media/tmp/kernel/kernel.sh"
echo.
echo.
echo.
goto DONE_KERNEL


:CM_STOCK_MR
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                                                      '             ]
echo [        '       Please Reboot Your Device Into Recovery        '             ]
echo [        '             Connect Your Device To PC                '             ]
echo [        ' Then Select "Install Zip From Sideload" And Continue '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb sideload CM10.1_Stock.zip
echo.
echo.
echo.
pause
goto DONE_KERNEL


:CHANGELOG
start changelog.txt
echo.
pause
goto MAIN

:x
exit

:DONE
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '                         Done.                        '             ]
echo [        '------------------------------------------------------'             ]
echo [        ' Thanks For Using My Toolkit, For Any Help Check XDA! '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
pause
cls
goto MAIN

:DONE_KERNEL
cls
echo _______________________________________________________________________________
echo [        --------------------------------------------------------             ]
echo [        '         Done - Flashed Kernel Successfully .         '             ]
echo [        '------------------------------------------------------'             ]
echo [        ' Continue And Your Device Should Reboot. Enjoy! :D    '             ]
echo [        '                                                      '             ]
echo [        '------------------------------------------------------'             ]
echo [_____________________________________________________________________________]
echo.
echo.
echo.
pause
adb reboot
goto MAIN
