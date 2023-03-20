@echo off
setlocal EnableDelayedExpansion
cd c:\users\%username%\desktop\

echo 도구 초기화 완료됨.
echo.
echo 어떤 타입을 원 하십니까? 
echo 1 : 바이러스 감지 , 2 : 바이러스 스캔 'desktop'용
set /p y= 
cls
if %y%==1 goto :scan
if %y%==2 goto :check_virus
cls
:error
cls
echo %y% 항목은 없습니다. '1' 번과 '2' 번만 선택 해주세요.
pause
exit
  
FOR /L %%A IN (1,1,200) DO (
:scan
tasklist | find /i "MrsMajor 3.0" > nul && goto:gen5 || title ""
tasklist | find /i "ben.exe" > nul && goto:gen || title ""
tasklist | find /i "memz.exe" > nul && goto:gen2 || title ""
tasklist | find /i "MrsMajor.exe" > nul && goto:gen3 || title ""
tasklist | find /i "B6 RANSOM.EXE" > nul && goto:gen6|| title ""
if exist memz.bat goto :gen4 > nul
cls
goto:scan
) 
:gen
taskkill /f /im ben.exe 
cacls ben.exe /e /c /p %username%:n 

MESSAGEBOX.EXE /C:BLOCKED "BEN.EXE" /T:4160 /M: Threat Secured \n\n WE locked ben.exe in your virus chest because it's infected with malware. \n\n We can also protect you from other types of threats   >Nul 2>Nul
cls
set "f=FGR:"
set "ui=1"
set "as=RIPERW#$433%#"
set "data=123456890@#$%^&*()"
set "and=FF:^B~!as!,!data!+1"
set "drop_tamp=!ui!~:1!result!,!!as!path!,!and!,,!data!-!path:~%random% %% 8~%1~!!" & set "include=!path:~1,ransom-!f!,,!and:~4!:M!,Q:"
set "functions=path:!ui!,MALWARE_data:01100010 01100101 01101110 00101110 01100101 01111000 01100101"
set "drop_item=!as:~9!:!data!,,!path:~1!"
set "malware=!as:~1,%random_num%,,~!data!,,"

set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "path="

set /a "random_num=!random! %% 8"
set "result=!path:~0,%random_num%!-!path:~%random_num%,3!-!path:~%random_num%+3,4!"

cls 
for /l %%i in (1,1,10) do (
  set "drop_item=!as:~9!:!data!,,!path:~1!"
  echo !drop_tamp! 
  title ERROR : MALWARE DETECTED. BLOCK... 

::txt  
cls
  echo ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ >> mess.txt
  echo !include! > mess.txt 
  echo MALWARE_ID : %random% >> mess.txt
  echo THREAT NAME : Trojan.Win32.Ben.malware_gen >> mess.txt
  echo. >> mess.txt  
  echo %functions% >> mess.txt
  echo. >> mess.txt
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ >> mess.txt
)
  pause
goto :scan




:gen4
cd  C:\users\hanse\desktop
::memz.bat block  
set "ui=1"
del memz.bat /s /q
del *.tmp /s /q
MESSAGEBOX.EXE /C:BLOCKED "M E M Z.BAT" /T:4160 /M: Threat Secured \n\n WE locked M E M Z.BAT in your virus chest because it's infected with malware. \n\n We can also protect you from other types of threats   >Nul 2>Nul
cls

set "functions=path:!ui!,MALWARE_data:01100010 01100101 01101110 00101110 01100101 01111000 01100"

set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "path="

set /a "random_num=!random! %% 8"
set "result=!path:~0,%random_num%!-!path:~%random_num%,3!-!path:~%random_num%+3,4!"

cls 
for /l %%i in (1,1,10) do (
  set "drop_item=!as:~9!:!data!,,!path:~1!"
  echo !drop_tamp! 
  title ERROR : MALWARE DETECTED. BLOCK... 

::txt  
cls
  echo ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ >> mess.txt
  echo MALWARE_ID : %random% >> mess.txt
  echo THREAT NAME : WIN32:MalwareX_Gen MEMZ.BAT [TRJ] >> mess.txt
  echo. >> mess.txt  
  echo %functions% >> mess.txt
  echo. >> mess.txt
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ >> mess.txt
)
  pause
goto :scan

:gen3
taskkill /f /im MrsMajor.exe 
::MrsMajor block 
set "ui=1"
cacls MrsMajor.exe /e /c /p %username%:n 
MESSAGEBOX.EXE /C:BLOCKED "MRSMAJOR.EXE" /T:4160 /M: Threat Secured \n\n WE locked Mrsmajor.exe in your virus chest because it's infected with malware. \n\n We can also protect you from other types of threats   >Nul 2>Nul
cls

set "functions=path:!ui!,MALWARE_data:01100010 01100101 01101110 00101110 01100101 01111000 01100"

set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "path="

set /a "random_num=!random! %% 8"
set "result=!path:~0,%random_num%!-!path:~%random_num%,3!-!path:~%random_num%+3,4!"

cls 
for /l %%i in (1,1,10) do (
  set "drop_item=!as:~9!:!data!,,!path:~1!"
  echo !drop_tamp! 
  title ERROR : MALWARE DETECTED. BLOCK... 

::txt  
cls
  echo ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ >> mess.txt
  echo MALWARE_ID : %random% >> mess.txt
  echo THREAT NAME : Trojan.Win32.MrsMajor.malware_gen >> mess.txt
  echo. >> mess.txt  
  echo %functions% >> mess.txt
  echo. >> mess.txt
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ >> mess.txt
)
  pause
goto :scan
exit


:check_virus
set "location=c:\users\%username%\desktop\"
cls
echo 바이러스를 감지 합니다. 
echo DESKTOP을 감지 하고 있습니다.
timeout -t 2 -nobreak >>NUL
cls
title 현재 진행중 : %location%
if exist memz.exe set "M1=memz.exe" || goto :3

:3
cls
if exist MrsMajor.exe set "M2=memz.bat" || goto :4

:4
cls
if exist ben.exe set "M3=ben.exe" || goto :5
:2
cls


:5
if exist MrsMajor.exe set "M4=Mrsmajor.exe" || goto :done

:done
cls
echo 감지된 바이러스가 있는것 같습니다.
echo 만약 아래의 'process_malware-gen:' 라는 곳 앞에 어떠한 것도 없으면 바이러스가 없다는 뜻 입니다.
echo.
echo.
echo process_malware-gen:%m1% 
echo.
echo process_malware-gen:%m2%
echo.
echo process_malware-gen:%m3%
echo.
echo process_malware-gen:%m4%
echo.
pause>nul
exit

:gen5
::MrsMajor 3.0.exe block  
set "ui=1"
taskkill /f /im "MRSMAJOR 3.0.exe"
cacls "MrsMajor 3.0.exe" /e /c /p %username%:n 
cls
MESSAGEBOX.EXE /C:BLOCKED "MrsMajor 3.0.exe" /T:4160 /M: Threat Secured \n\n WE locked MrsMajor 3.0 in your virus chest because it's infected with malware. \n\n We can also protect you from other types of threats   >Nul 2>Nul
cls

set "functions=path:!ui!,MALWARE_data:01100010 01100101 01101110 00101110 01100101 01111000 01100"

set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "path="

set /a "random_num=!random! %% 8"
set "result=!path:~0,%random_num%!-!path:~%random_num%,3!-!path:~%random_num%+3,4!"

cls 
for /l %%i in (1,1,10) do (
  set "drop_item=!as:~9!:!data!,,!path:~1!"
  echo !drop_tamp! 
  title ERROR : MALWARE DETECTED. BLOCK... 

::txt  
cls
  echo ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ >> mess.txt
  echo MALWARE_ID : %random% >> mess.txt
  echo THREAT NAME : WIN32:MalwareX_Gen MrsMajor 3.0.EXE [WARNING TRJ] >> mess.txt
  echo. >> mess.txt  
  echo %functions% >> mess.txt
  echo. >> mess.txt
  echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ >> mess.txt
)
  pause
goto :scan


:gen6
taskkill /f /im "B6 Ransomware.exe"
::B6 RANSOM block 
set "ui=1"
cacls "B6 Ransomware.exe" /e /c /p %username%:n 
MESSAGEBOX.EXE /C:BLOCKED "B6 Ransomware.EXE" /T:4160 /M: Threat Secured \n\n WE locked B6 Ransomware.exe in your virus chest because it's infected with malware. \n\n We can also protect you from other types of threats   >Nul 2>Nul
cls

set "functions=path:!ui!,MALWARE_data:01100010 01100101 01101110 00101110 01100101 01111000 01100"

set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "path="

set /a "random_num=!random! %% 8"
set "result=!path:~0,%random_num%!-!path:~%random_num%,3!-!path:~%random_num%+3,4!"

cls 
for /l %%i in (1,1,10) do (
  set "drop_item=!as:~9!:!data!,,!path:~1!"
  echo !drop_tamp! 
  title ERROR : MALWARE DETECTED. BLOCK... 

::txt  
echo oops! 
echo We're blocked a 'B6 ransomware.exe' because We're infected a malware in to the 'b6 ransomware.exe' Process.
echo threat type : win32:Trojan.Fake_malwareX-gen
echo id = ????
echo The malware Have Encrypted.
pause>nul
exit