@echo off
Set GENSTR=
set NEWHOME=
set NEWGENSTR=
set HOME=
set PIT=0
set SCREENS=0
set PROFORMA=0
set ARCHIVE=

IF %1==-a SET ARCHIVE=%2
IF %1 NEQ -? GOTO DEBUT
echo.
echo SaveAll v1.06
echo.
echo Description :
echo    Sauvegarde les fichiers XMF essentiels.
echo      ^> Listes d'action Pitstop (*.EAL)
echo      ^> Profiles de contr“le Pitstop (*.PPP)
echo      ^> Screens Sets XMF
echo      ^> Dossier Proforma XMF (repŠres perso, impo, etc)
echo.
echo.
echo Utilisation :
echo    SaveAll.exe [-A archive.7z]
echo.
echo ParamŠtres
echo    -a    archive.7z         Sp‚cifie le nom de l'archive dans laquelle
echo                             seront sauvegard‚s les fichiers.
echo                             L'archive par d‚faut sera SaveAll.7z
echo.
echo    -?                       Affiche ce message d'aide.
GOTO EOF

:DEBUT
cls
set ERR=0
echo SaveAll v1.06
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
					IF %errorlevel%==3 GOTO SAVEAll


:EDITFOLDER

REM Edition des dossiers XMF et Genstore
IF %ERR%==2 GOTO ERR2

				echo Dossier d'instalaltion XMF actuel : "%HOME%"
				echo        Nouvel emplacement (laisser vide si aucune modification ou * pour autod‚tection^)
				set /p NEWHOME= ^>
					IF DEFINED NEWHOME set HOME=%NEWHOME%
					IF %HOME%==* set HOME=
				echo.
				IF NOT DEFINED HOME (echo *autod‚tection*) ELSE (echo %HOME%)
				echo.
				IF %ERR%==1 GOTO DEBUT

	:ERR2
				echo Dossier Genstore actuel : "%GENSTR%"
				echo        Nouvel emplacement (laisser vide si aucune modification ou * pour autod‚tection^)
				set /p NEWGENSTR= ^>
					IF DEFINED NEWGENSTR set GENSTR=%NEWGENSTR%
					IF %GENSTR%==* set GENSTR=
				GOTO DEBUT


:SAVEAll

REM Sauvegarde des fichiers
echo D‚but SAVEALL
echo.
ping 127.0.0.0 > nul

IF NOT DEFINED ARCHIVE set ARCHIVE=SaveAll.7z

IF EXIST %ARCHIVE% RENAME %ARCHIVE% "%date:/=%-%time::=%---%ARCHIVE%"

7z a %ARCHIVE% "%GENSTR%Proforma"
	IF %errorlevel% NEQ 0 set PIT=1
7z a %ARCHIVE% "%HOME%data\Stabilizer\Preflight\PP*.ppp"
	IF %errorlevel% NEQ 0 set PIT=1
7z a %ARCHIVE% "%HOME%data\Stabilizer\Preflight\AL*.eal"
	IF %errorlevel% NEQ 0 set SCREENS=1
7z a %ARCHIVE% "%HOME%data\screens"
	IF %errorlevel% NEQ 0 set PROFORMA=1

@echo.
@echo.
@echo.
IF %PIT%==0	( echo Les scripts d'action et profils Pitstop ont ‚t‚ archiv‚s avec succŠs !
	) ELSE	( echo       ! Erreur lors de l'archivage des fichiers Pitstop ! )
@echo.
@echo.
IF %SCREENS%==0	( echo Les Screens Sets ont ‚t‚ archiv‚s !
		) ELSE	( echo       ! Erreur lors de l'archivage des Screens Sets ! )
@echo.
@echo.
IF %PROFORMA%==0	( echo Le dossier Proforma a ‚t‚ archiv‚ avec succŠs !
			) ELSE	( echo       ! Erreur lors de l'archivage du dossier Proforma ! )
echo.
echo.
echo   ^> Fichier d'archivage : %cd%\%ARCHIVE%
echo.
echo.
echo.
pause
:EOF