::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaLUlNovX1tQ=
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaLUlNorD39Q=
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eozJw6SaL61C1RSqcZohtg==
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eozOyLjDdK4X5kmE
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eond0/nYbuQf5iU=
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eojY2YudH/MZ5k+pJNgp2nY6
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eojS1fncbrBeugvgeZpN
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eojX07bDcq5DpxWqcZohtg==
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eojW1bCbLOVeuAu0OMZj0nZW+A==
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eojU2L6LI/ReuAu0OMZj0nZW+A==
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eobY1bqYbbJd7knoFQ==
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eobf1ObDcK4X5kmE
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42eobVzrjDeK4X5kmE
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO42epjS1KSaKPIW60GpJNgp2nY6
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaO86f47f1vqLOOVz
::fBE1pAF6MU+EWH3eyGQFAjIUbTSyAFm/FaET+u3a4+a7sV8eaPgzcY2KlLCCLIA=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJH+x3mtwCStkcDaHL3+1FLA95OTH/PiEnl8YR/YwaoqbkuXHbukQ5SU=
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
::ZQ05rAF9IAHYFVzEqQICLQhAQxaHHWe2Zg==
::eg0/rx1wNQPfEVWB+kM9LVsJDDaHL3+1FLA95OSb
::fBEirQZwNQPfEVWB+kM9LVsJDDaHL3+1FLA95OSb
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWH+R/ks2IRdZLA==
::YQ03rBFzNR3SWATE3m8xILidDCTCGn6wD7MV5OWb
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmu2WMYDVsGHFXaXA==
::Zh4grVQjdCuDJH+x3mtwCStkcDaHL3+1FLA95OTHvaTVnn8YR/Ywaor61rjAJfgWig==
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

Title RestoreAll v%VERSION%

IF "%1"=="-?" GOTO README
IF "%1"=="-a" set ARCHIVE=%2
IF "%3"=="-a" set ARCHIVE=%4
IF "%1"=="-u" set ONLINEUPD=%2
IF "%3"=="-u" set ONLINEUPD=%4
	IF NOT DEFINED ONLINEUPD set ONLINEUPD=https://www.dropbox.com/s/eb9y4bz8htfle41/version?dl=1

bitsadmin /transfer version %ONLINEUPD% "%cd%\version"
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
					echo       RestoreAll ver %VERSION%
					echo.
					echo.

		for /f "tokens=2 delims= " %%a in ('findstr "ver" "version"') do set NEWVER=%%a
		IF %VERSION% LSS %NEWVER%	(	echo Une nouvelle version est disponible ^(%NEWVER%^) !
										Choice /C:on /M:"Voulez-vous effectuer la mise … jour ?" )
											IF %errorlevel%==1 GOTO UPDATE

GOTO DEBUT

:README
echo.
echo RestoreAll v%VERSION%
echo.
echo Description :
echo    Restaure les fichiers XMF essentiels.
echo      ^> Listes d'action Pitstop (*.EAL)
echo      ^> Profiles de contr“le Pitstop (*.PPP)
echo      ^> Screens Sets XMF
echo      ^> Dossier Proforma XMF (repŠres perso, impo, etc)
echo.
echo.
echo Utilisation :
echo    RestoreAll.exe [-A archive.7z] [-u http://url]
echo.
echo ParamŠtres
echo    -a    archive.7z         Sp‚cifie le nom de l'archive dans laquelle
echo                             seront sauvegard‚s les fichiers.
echo                             L'archive par d‚faut sera SaveAll.7z
echo.
echo    -u    http://url		 Sp‚cifie l'url de t‚l‚chargement de la mise
echo                             … jour.
echo.
echo    -?                       Affiche ce message d'aide.
GOTO EOF

:DEBUT
DEL /q version
cls
set ERR=0
cls
					echo.
					echo   ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
					echo   º                                                                                    º
					echo   º ÛÛÛÛÛÛ» ÛÛÛÛÛÛÛ»ÛÛÛÛÛÛÛ»ÛÛÛÛÛÛÛÛ» ÛÛÛÛÛÛ» ÛÛÛÛÛÛ» ÛÛÛÛÛÛÛ» ÛÛÛÛÛ» ÛÛ»     ÛÛ»      º
					echo   º ÛÛÉÍÍÛÛ»ÛÛÉÍÍÍÍ¼ÛÛÉÍÍÍÍ¼ÈÍÍÛÛÉÍÍ¼ÛÛÉÍÍÍÛÛ»ÛÛÉÍÍÛÛ»ÛÛÉÍÍÍÍ¼ÛÛÉÍÍÛÛ»ÛÛº     ÛÛº      º
					echo   º ÛÛÛÛÛÛÉ¼ÛÛÛÛÛ»  ÛÛÛÛÛÛÛ»   ÛÛº   ÛÛº   ÛÛºÛÛÛÛÛÛÉ¼ÛÛÛÛÛ»  ÛÛÛÛÛÛÛºÛÛº     ÛÛº      º
					echo   º ÛÛÉÍÍÛÛ»ÛÛÉÍÍ¼  ÈÍÍÍÍÛÛº   ÛÛº   ÛÛº   ÛÛºÛÛÉÍÍÛÛ»ÛÛÉÍÍ¼  ÛÛÉÍÍÛÛºÛÛº     ÛÛº      º
					echo   º ÛÛº  ÛÛºÛÛÛÛÛÛÛ»ÛÛÛÛÛÛÛº   ÛÛº   ÈÛÛÛÛÛÛÉ¼ÛÛº  ÛÛºÛÛÛÛÛÛÛ»ÛÛº  ÛÛºÛÛÛÛÛÛÛ»ÛÛÛÛÛÛÛ» º
					echo   º ÈÍ¼  ÈÍ¼ÈÍÍÍÍÍÍ¼ÈÍÍÍÍÍÍ¼   ÈÍ¼    ÈÍÍÍÍÍ¼ ÈÍ¼  ÈÍ¼ÈÍÍÍÍÍÍ¼ÈÍ¼  ÈÍ¼ÈÍÍÍÍÍÍ¼ÈÍÍÍÍÍÍ¼ º
					echo   º                                                                            ver %VERSION% º
					echo   ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
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
				echo        Nouvel emplacement (laisser vide si aucune modification ou * pour autod‚tection^)
				set /p NEWHOME= ^>
					IF DEFINED NEWHOME set HOME=%NEWHOME%
					IF "%NEWHOME%"=="*" set HOME=
				echo.
				IF NOT DEFINED HOME (echo *autodétection*) ELSE (echo %HOME%)
				echo.
				IF %ERR%==1 GOTO DEBUT

	:ERR2
				echo Dossier Genstore actuel : "%GENSTR%"
				echo        Nouvel emplacement (laisser vide si aucune modification ou * pour autod‚tection^)
				set /p NEWGENSTR= ^>
					IF DEFINED NEWGENSTR set GENSTR=%NEWGENSTR%
					IF "%NEWGENSTR%"=="*" set GENSTR=
				GOTO DEBUT


:PROCESS

REM Restauration des fichiers
echo D‚but RETOREALL
echo.
IF NOT DEFINED ARCHIVE set ARCHIVE=SaveAll.7z



echo Restauration des fichiers depuis %ARCHIVE%
ping 127.0.0.0 > nul

7z x -y %ARCHIVE%
move /y *.eal "%HOME%data\Stabilizer\Preflight\"
	IF %errorlevel% NEQ 0 set PIT=1
move /y *.ppp "%HOME%data\Stabilizer\Preflight\"
	IF %errorlevel% NEQ 0 set PIT=1
move /y screens "%HOME%data\"
	IF %errorlevel% NEQ 0 set SCREENS=1
move /y Proforma "%GENSTR%"
	IF %errorlevel% NEQ 0 set PROFORMA=1
echo.
echo.
echo.
IF %PIT%==0	( echo Les scripts d'action et profils Pitstop ont ‚t‚ copi‚s dans: 
	) ELSE	( echo   ! Erreur lors de la copie des fichiers Pitstop vers : )
echo   ^> %HOME%data\Stabilizer\Preflight\
echo.
echo.
IF %SCREENS%==0	( echo Les Screens Sets ont ‚t‚ copi‚s dans:
		) ELSE	( echo   ! Erreur lors de la copie des Screens Sets vers : )
echo   ^> %HOME%data\screens\
echo.
echo.
IF %PROFORMA%==0	( echo Le dossier Proforma a ‚t‚ copi‚ dans:
			) ELSE	( echo   ! Erreur lors de la copie du dossier Proforma vers : )
echo   ^> %GENSTR%
echo.
echo.



echo.
pause
GOTO EOF



:UPDATE

echo Mise … jour en cours...
ping 127.0.0.0 > nul

for /f "tokens=2 delims= " %%a in ('findstr "url" "version"') do set UPDATE=%%a
for /f "tokens=1 delims= " %%i in ('megadl %UPDATE% --path="%cd%\update" ^| findstr Downloaded') do set RESULT=%%i
del /q version

	IF NOT DEFINED RESULT	(	echo !! Erreur lors de la mise … jour !!
								RMDIR /S /Q temp
								pause
								GOTO DEBUT )
									
        ECHO @echo off> update.cmd
		ECHO RENAME RestoreAll.exe RestoreAll.exe.old>> update.cmd
		ECHO RENAME update RestoreAll.exe>> update.cmd
		ECHO start RestoreAll.exe>> update.cmd
		ECHO del /q RestoreAll.exe.old>> update.cmd
		ECHO exit>> update.cmd

start update.cmd
exit


:EOF