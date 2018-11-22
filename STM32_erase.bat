SET LOADERPATH= "C:\Program Files (x86)\STMicroelectronics\Software\Flash Loader Demo\STMFlashLoader.exe"
SET /A PORT=5
SET DEVICENAME="STM32F1_Med-density_64K"
CLS
@echo off
%LOADERPATH% -c --pn %PORT% --br 115200 --db 8 --pr EVEN --sb 1 --ec OFF  --to 1000 --co ON -Dtr --Hi -Rts --Lo  -i %DEVICENAME% -e --all -Dtr --Lo -Rts --Hi --Lo
PAUSE 