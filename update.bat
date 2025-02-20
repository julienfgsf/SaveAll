@shift /0
@echo off
mode con: lines=32 cols=91


::::VERSION::::
SET VERSION=2.3
:::::::::::::::

Title Update

cls



					echo.
					echo       ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
					echo       º                                                                             º
					echo       º             ÛÛ»   ÛÛ»ÛÛÛÛÛÛ» ÛÛÛÛÛÛ»  ÛÛÛÛÛ» ÛÛÛÛÛÛÛÛ»ÛÛÛÛÛÛÛ»              º
					echo       º             ÛÛº   ÛÛºÛÛÉÍÍÛÛ»ÛÛÉÍÍÛÛ»ÛÛÉÍÍÛÛ»ÈÍÍÛÛÉÍÍ¼ÛÛÉÍÍÍÍ¼              º
					echo       º             ÛÛº   ÛÛºÛÛÛÛÛÛÉ¼ÛÛº  ÛÛºÛÛÛÛÛÛÛº   ÛÛº   ÛÛÛÛÛ»                º
					echo       º             ÛÛº   ÛÛºÛÛÉÍÍÍ¼ ÛÛº  ÛÛºÛÛÉÍÍÛÛº   ÛÛº   ÛÛÉÍÍ¼                º
					echo       º             ÈÛÛÛÛÛÛÉ¼ÛÛº     ÛÛÛÛÛÛÉ¼ÛÛº  ÛÛº   ÛÛº   ÛÛÛÛÛÛÛ»              º
					echo       º              ÈÍÍÍÍÍ¼ ÈÍ¼     ÈÍÍÍÍÍ¼ ÈÍ¼  ÈÍ¼   ÈÍ¼   ÈÍÍÍÍÍÍ¼              º
					echo       º                                                                             º
					echo       ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
					echo       SaveAll update ver %VERSION%
					echo.
					echo.

ping 127.0.0.1 > nul

bitsadmin /cache /clear
bitsadmin /transfer version https://github.com/julienfgsf/SaveAll/raw/refs/heads/master/SaveAll.bat "%cd%\SaveAll.bat"
pause