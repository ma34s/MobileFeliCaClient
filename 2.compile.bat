@echo off
cd /d %~dp0
call .\bin\config.bat

java -jar %apktool% b %extract_dir% -o %out_apk%

