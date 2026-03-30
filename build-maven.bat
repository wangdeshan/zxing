@SET ANDROID_HOME=D:\Android_devtool\android-sdk-windows
@SET ANDROID_SDK_HOME=D:\Android_devtool\android-sdk-windows\SDKHOME
@SET JAVA_HOME=D:\tools\java\jdk_1.8.0_351_64
@path %PATH%;%JAVA_HOME%\bin;D:\tools\Open++\E\apache\maven\3.9.12\bin

@set ORIGCWD=%CD%

:ST
cls
@CALL :BAT_MAIN
pause
goto :ST

:BAT_MAIN
@REM java -version
@CD %ORIGCWD%
call mvn -DskipTests install
@REM call mvn -DskipTests -rf :android
@REM call mvn  -DskipTests android:install
@CD %ORIGCWD%
@cd android
call mvn  -DskipTests android:apk
@CD %ORIGCWD%

:EOF