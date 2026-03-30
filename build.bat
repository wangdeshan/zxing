call D:\tools\Open++\E\Xcmd.cmd
cd /d %~dp0
chcp 936


:assem
cls
call gradlew assembleDebug --warning-mode all
if %errorlevel% == 0 goto :dec
pause
goto :assem

:dec
@REM type app\build\outputs\apk\debug\app-debug.apk >dec-debug.apk
@REM rd /q /s     dec-debug.apk.atproj
@REM call apktool dec-debug.apk
@REM notepad dec-debug.apk.atproj\smali\my\SpeexBridge.smali 
@REM adb connect 127.0.0.1:21503
@REM adb -s 192.168.100.100:5555 install -r -d app\build\outputs\apk\debug\app-debug.apk
pause
goto :assem