@shift /0
@echo off
mode con: lines=32 cols=91


::::VERSION::::
SET VERSION=2.3
:::::::::::::::

Title Update

cls



					echo.
					echo       �����������������������������������������������������������������������������ͻ
					echo       �                                                                             �
					echo       �             �ۻ   �ۻ�����ۻ �����ۻ  ����ۻ �������ۻ������ۻ              �
					echo       �             �ۺ   �ۺ������ۻ������ۻ������ۻ�������ͼ������ͼ              �
					echo       �             �ۺ   �ۺ������ɼ�ۺ  �ۺ������ۺ   �ۺ   ����ۻ                �
					echo       �             �ۺ   �ۺ�����ͼ �ۺ  �ۺ������ۺ   �ۺ   ����ͼ                �
					echo       �             �������ɼ�ۺ     ������ɼ�ۺ  �ۺ   �ۺ   ������ۻ              �
					echo       �              �����ͼ �ͼ     �����ͼ �ͼ  �ͼ   �ͼ   ������ͼ              �
					echo       �                                                                             �
					echo       �����������������������������������������������������������������������������ͼ
					echo       SaveAll update ver %VERSION%
					echo.
					echo.

ping 127.0.0.1 > nul

bitsadmin /cache /clear
bitsadmin /transfer version https://github.com/julienfgsf/SaveAll/raw/refs/heads/master/SaveAll.bat "%cd%\SaveAll.bat"
pause