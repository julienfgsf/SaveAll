@shift /0
@echo off
mode con: lines=32 cols=91


::::VERSION::::
SET VERSION=2.3
:::::::::::::::

Title Update

cls



					echo.
					echo       浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
					echo       �                                                                             �
					echo       �             栩�   栩斯栩栩杙 栩栩栩�  栩栩杙 栩栩栩栩斯栩栩栩�              �
					echo       �             栩�   栩裁柯様栩斯柯様栩斯柯様栩使様栩浜夕栩浜様夕              �
					echo       �             栩�   栩裁栩栩柯勺杠  栩裁栩栩栩�   栩�   栩栩杙                �
					echo       �             栩�   栩裁柯様夕 栩�  栩裁柯様栩�   栩�   栩浜夕                �
					echo       �             匪栩栩柯勺杠     栩栩栩票栩�  栩�   栩�   栩栩栩杙              �
					echo       �              藩様様� 藩�     藩様様� 藩�  藩�   藩�   藩様様夕              �
					echo       �                                                                             �
					echo       藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
					echo       SaveAll update ver %VERSION%
					echo.
					echo.

ping 127.0.0.1 > nul

bitsadmin /cache /clear
bitsadmin /transfer version https://github.com/julienfgsf/SaveAll/raw/refs/heads/master/SaveAll.bat "%cd%\SaveAll.bat"
pause