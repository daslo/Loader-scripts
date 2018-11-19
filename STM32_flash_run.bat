@echo off
SET LOADERPATH="C:\Program Files (x86)\STMicroelectronics\Software\Flash Loader Demo\STMFlashLoader.exe"
SET /A PORT=5
REM default project name (used if empty input)
SET PROJECTNAME=PROJECT
SET /P PROJECTNAME="Project name (hit enter for %PROJECTNAME%):"
REM Often paths to executables look like this: C:\WORKSPACE_FOLDER\PROJECT\Debug\PROJECT.bin
SET FILEPATH_1="C:\Users\USER\AC6workspace\"
SET FILEPATH_2="Debug"
SET DEVICENAME="STM32F1_Med-density_64K"
CLS
CD %FILEPATH_1%
CD %PROJECTNAME%
CD %FILEPATH_2%
%LOADERPATH% -c --pn %PORT% --br 115200 --db 8 --pr EVEN --sb 1 --ec OFF  --to 1000 --co ON -Dtr --Hi -Rts --Lo  -i %DEVICENAME% -e --all -d --a 8000000 --fn %PROJECTNAME%.bin -r --a 8000000 -Dtr --Lo -Rts --Hi --Lo
PAUSE 
