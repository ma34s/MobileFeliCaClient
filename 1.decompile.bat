@echo off
cd /d %~dp0
:
call .\bin\config.bat

java -jar %apktool% d %src_apk% -o %extract_dir%