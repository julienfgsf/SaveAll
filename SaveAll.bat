::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnhoHGuYzdO8=
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnhoHGucnfe8=
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVuEtYZ/P1fnfH7Fd7knoFQ==
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVuEqaoOWjvqKLOxz
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVuQ5ccKNlLCCLIA=
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVuU8e7DI5aeELOpeuwvgeZpN
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVuU2d8KJlOTDcK4X5kmE
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVuUzcY2WiPrebbBd7knoFQ==
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVuUyd4vO1rHDcq5DpxWqcZohtg==
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVuUweoXe2aDDcq5DpxWqcZohtg==
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVus8d4HNl+bAJOwfig==
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVus7dt2WivqKLOxz
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVusxbIOWgvqKLOxz
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkEUVvU2dp/P0qaLIeReuwvgeZpN
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnkAYU+M7dMHewrHu
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFi7ELA95OTH/PiEnlcRXeBuNovX1tQ=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJH+x3mtwCStkcDeDKm6bCrkg+/r40/mGtEhdHLN2NobY1dQ=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJiZks0
::ZQ05rAF9IBncCkqN+0xwdVsGAlTi
::ZQ05rAF9IAHYFVzEqQIDKQ1RbQiOXA==
::eg0/rx1wNQPfEVWB+kM9LVsJDDeDKm6bCrl8
::fBEirQZwNQPfEVWB+kM9LVsJDDeDKm6bCrl8
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWH+R/ks2IRdZLA==
::YQ03rBFzNR3SWATE3k8xILidDCTCGn6wD7MV5OWb
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmu2WMYDVsGHFXaXA==
::Zh4grVQjdCuDJH+x3mtwCStkcDeDKm6bCrkguqap09mGtEg8WO5xfZfeug==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
mode con: lines=32 cols=91

::::VERSION::::
SET VERSION=2.2
:::::::::::::::

SET NEWVER=0
Set GENSTR=
set NEWHOME=
set NEWGENSTR=
set HOME=
set PIT=0
set SCREENS=0
set PROFORMA=0
set ARCHIVE=
set ONLINEUPD=

del /q version > nul
del /q update.cmd > nul
cls

Title SaveAll v%VERSION%

IF "%1"=="-?" GOTO README
IF "%1"=="-a" set ARCHIVE=%2
IF "%3"=="-a" set ARCHIVE=%4
IF "%1"=="-u" set ONLINEUPD=%2
IF "%3"=="-u" set ONLINEUPD=%4
	IF NOT DEFINED ONLINEUPD set ONLINEUPD=https://www.dropbox.com/s/woia9vxppmxebf0/version?dl=1

bitsadmin /transfer version %ONLINEUPD% "%cd%\version"
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
					echo       SaveAll ver %VERSION%
					echo.
					echo.

		for /f "tokens=2 delims= " %%a in ('findstr "ver" "version"') do set NEWVER=%%a
		IF %VERSION% LSS %NEWVER%	(	echo Une nouvelle version est disponible ^(%NEWVER%^) !
										Choice /C:on /M:"Voulez-vous effectuer la mise � jour ?" )
											IF %errorlevel%==1 GOTO UPDATE

GOTO DEBUT

:README
echo.
echo SaveAll v%VERSION%
echo.
echo Description :
echo    Sauvegarde les fichiers XMF essentiels.
echo      ^> Listes d'action Pitstop (*.EAL)
echo      ^> Profiles de contr�le Pitstop (*.PPP)
echo      ^> Screens Sets XMF
echo      ^> Dossier Proforma XMF (rep�res perso, impo, etc)
echo.
echo.
echo Utilisation :
echo    SaveAll.exe [-a archive.7z] [-u http://url]
echo.
echo Param�tres
echo    -a    archive.7z         Sp�cifie le nom de l'archive dans laquelle
echo                             seront sauvegard�s les fichiers.
echo                             L'archive par d�faut sera SaveAll.7z
echo.
echo    -u    http://url		 Sp�cifie l'url de t�l�chargement de la mise
echo                             � jour.
echo.
echo    -?                       Affiche ce message d'aide.
GOTO EOF

:DEBUT
DEL /q version
cls
set ERR=0
cls
					echo.
					echo       �����������������������������������������������������������������������������ͻ
					echo       �                                                                             �
					echo       �          ������ۻ ����ۻ �ۻ   �ۻ������ۻ ����ۻ �ۻ     �ۻ               �
					echo       �          ������ͼ������ۻ�ۺ   �ۺ������ͼ������ۻ�ۺ     �ۺ               �
					echo       �          ������ۻ������ۺ�ۺ   �ۺ����ۻ  ������ۺ�ۺ     �ۺ               �
					echo       �          ������ۺ������ۺ��ۻ ��ɼ����ͼ  ������ۺ�ۺ     �ۺ               �
					echo       �          ������ۺ�ۺ  �ۺ �����ɼ ������ۻ�ۺ  �ۺ������ۻ������ۻ          �
					echo       �          ������ͼ�ͼ  �ͼ  ���ͼ  ������ͼ�ͼ  �ͼ������ͼ������ͼ          �
					echo       �                                                                     ver %VERSION% �
					echo       �����������������������������������������������������������������������������ͼ
					echo.
					echo.
					echo.
					
REM Recherche du dossier XMF dans la base de registre
IF NOT DEFINED HOME	(	echo Recherche du dossier XMF ...
						ping -n 2 127.0.0.1 > nul
						for /f "tokens=2*" %%a in ('reg query "HKCU\Software\FujiFilm\XMF\Installer\Prefs" /v Home') do set HOME=%%b
					)
					
					IF NOT DEFINED HOME 				(	echo   ^> Dossier d'instalaltion XMF introuvable !
															echo.
															set ERR=1
															GOTO CHOICE
														)

					set HOME=%HOME:/=\%
					set HOME=%HOME%\
					set HOME=%HOME:\\=\%

					IF NOT EXIST "%HOME%"				(	echo   ^> Dossier d'instalaltion XMF introuvable !
															echo.
															set ERR=1
															GOTO CHOICE
														)
														

echo   ^> Emplacement de XMF: "%HOME%"
echo.

					IF NOT EXIST "%HOME%install.log"	(	echo   ^> Dossier d'installation incomplet !
															echo        Fichier install.log manquant
															echo.
															set ERR=1
															GOTO CHOICE
														)

REM Recherche du Genstore via le fichier INSTALL.LOG
IF NOT DEFINED GENSTR	(	echo Recherche du Genstore ...
							ping -n 2 127.0.0.1 > nul
							for /f "tokens=5* delims= " %%a in ('findstr "(working)" "%HOME%install.log"') do set GENSTR=%%a %%b"
						)
						
					IF NOT DEFINED GENSTR				(	echo   ^> Dossier Genstore introuvable !
															echo.
															set ERR=2
															GOTO CHOICE
														)

					set GENSTR=%GENSTR: "=%
					set GENSTR=%GENSTR:"=%
					set GENSTR=%GENSTR:/=\%
					set GENSTR=%GENSTR%\
					set GENSTR=%GENSTR:\\=\%

					IF %GENSTR:~0,1% NEQ \ GOTO LOCALNAME
															set GENSTR=\%GENSTR%
															set HOMEPATH=%cd%
															pushd %GENSTR%
															set GENSTR=%cd%\
															pushd %HOMEPATH%
														

:LOCALNAME

					IF NOT EXIST "%GENSTR%"				(	echo   ^> Dossier Genstore introuvable !
															echo.
															set ERR=2
															GOTO CHOICE
														)

					


					
echo   ^> Emplacement du Genstore: "%GENSTR%"
echo.

					IF NOT EXIST "%GENSTR%Proforma"		(	echo   ^> Le dossier Genstore ne semble pas correct
															echo        Dossier Proforma manquant
															echo.
														)

:CHOICE
echo.
echo.
IF %ERR% NEQ 0	(			echo Appuyer sur E pour Editer les chemins ou Q pour Quitter
							choice /C:EQ
				) ELSE (	echo Appuyer sur E pour Editer les chemins, Q pour Quitter ou C pour Continuer
							choice /C:EQC )
echo.
					IF %errorlevel%==1 GOTO EDITFOLDER
					IF %errorlevel%==2 exit
					IF %errorlevel%==3 GOTO PROCESS


:EDITFOLDER

REM Edition des dossiers XMF et Genstore
IF %ERR%==2 GOTO ERR2

				echo Dossier d'instalaltion XMF actuel : "%HOME%"
				echo        Nouvel emplacement (laisser vide si aucune modification ou * pour autod�tection^)
				set /p NEWHOME= ^>
					IF DEFINED NEWHOME	set HOME=%NEWHOME%
					IF "%NEWHOME%"=="*" set HOME=
				echo.
				IF NOT DEFINED HOME (echo *autod�tection*) ELSE (echo %HOME%)
				echo.
				IF %ERR%==1 GOTO DEBUT

	:ERR2
				echo Dossier Genstore actuel : "%GENSTR%"
				echo        Nouvel emplacement (laisser vide si aucune modification ou * pour autod�tection^)
				set /p NEWGENSTR= ^>
					IF DEFINED NEWGENSTR set GENSTR=%NEWGENSTR%
					IF "%NEWGENSTR%"=="*" set GENSTR=
				GOTO DEBUT


:PROCESS

REM Sauvegarde des fichiers
echo D�but SAVEALL
echo.
IF NOT DEFINED ARCHIVE set ARCHIVE=SaveAll.7z

IF EXIST %ARCHIVE% RENAME %ARCHIVE% "%date:/=%-%time::=%---%ARCHIVE%"

echo Sauvegarde des fichiers vers %ARCHIVE%
ping 127.0.0.0 > nul

7z a %ARCHIVE% "%GENSTR%Proforma"
	IF %errorlevel% NEQ 0 set PIT=1
7z a %ARCHIVE% "%HOME%data\Stabilizer\Preflight\PP*.ppp"
	IF %errorlevel% NEQ 0 set PIT=1
7z a %ARCHIVE% "%HOME%data\Stabilizer\Preflight\AL*.eal"
	IF %errorlevel% NEQ 0 set SCREENS=1
7z a %ARCHIVE% "%HOME%data\screens"
	IF %errorlevel% NEQ 0 set PROFORMA=1

echo.
echo.
echo.
IF %PIT%==0	( echo Les scripts d'action et profils Pitstop ont �t� archiv�s avec succ�s !
	) ELSE	( echo       ! Erreur lors de l'archivage des fichiers Pitstop ! )

echo.
echo.
IF %SCREENS%==0	( echo Les Screens Sets ont �t� archiv�s !
		) ELSE	( echo       ! Erreur lors de l'archivage des Screens Sets ! )

echo.
echo.
IF %PROFORMA%==0	( echo Le dossier Proforma a �t� archiv� avec succ�s !
			) ELSE	( echo       ! Erreur lors de l'archivage du dossier Proforma ! )

echo.
echo.
echo   ^> Fichier d'archivage : %cd%\%ARCHIVE%
echo.
echo.
echo.
pause
GOTO EOF



:UPDATE

echo Mise � jour en cours...
ping 127.0.0.0 > nul

for /f "tokens=2 delims= " %%a in ('findstr "url" "version"') do set UPDATE=%%a
for /f "tokens=1 delims= " %%i in ('megadl %UPDATE% --path="%cd%\update" ^| findstr Downloaded') do set RESULT=%%i
del /q version

	IF NOT DEFINED RESULT	(	echo !! Erreur lors de la mise � jour !!
								RMDIR /S /Q temp
								pause
								GOTO DEBUT )
									
        ECHO @echo off> update.cmd
		ECHO RENAME SaveAll.exe SaveAll.exe.old>> update.cmd
		ECHO RENAME update SaveAll.exe>> update.cmd
		ECHO start SaveAll.exe>> update.cmd
		ECHO del /q SaveAll.exe.old>> update.cmd
		ECHO exit>> update.cmd

start update.cmd
exit


:EOF
