@shift /0
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
set ICCSTR=
set PPP=0
set EAL=0
set SCREENS=0
set PROFORMA=0
set ARCHIVE=
set UPDATE=
set ONLINEUPD=https://raw.githubusercontent.com/julienfgsf/SaveAll/refs/heads/master/version

del /q version > nul
del /q update.bat > nul
cls

Title SaveAll v%VERSION%

bitsadmin /cache /clear
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
					echo       SaveAll ver %VERSION%
					echo.
					echo.

		for /f "tokens=2 delims= " %%a in ('findstr "ver" "version"') do set NEWVER=%%a
		IF %VERSION% LSS %NEWVER%	(	echo New version available ^(%NEWVER%^) !
										Choice /C:yn /M:"Do you want to update ?" )
											IF %errorlevel%==1 GOTO UPDATE

GOTO START


:START
DEL /q version
cls
set ERR=0
cls
					echo.
					echo       ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
					echo       º                                                                             º
					echo       º          ÛÛÛÛÛÛÛ» ÛÛÛÛÛ» ÛÛ»   ÛÛ»ÛÛÛÛÛÛÛ» ÛÛÛÛÛ» ÛÛ»     ÛÛ»               º
					echo       º          ÛÛÉÍÍÍÍ¼ÛÛÉÍÍÛÛ»ÛÛº   ÛÛºÛÛÉÍÍÍÍ¼ÛÛÉÍÍÛÛ»ÛÛº     ÛÛº               º
					echo       º          ÛÛÛÛÛÛÛ»ÛÛÛÛÛÛÛºÛÛº   ÛÛºÛÛÛÛÛ»  ÛÛÛÛÛÛÛºÛÛº     ÛÛº               º
					echo       º          ÈÍÍÍÍÛÛºÛÛÉÍÍÛÛºÈÛÛ» ÛÛÉ¼ÛÛÉÍÍ¼  ÛÛÉÍÍÛÛºÛÛº     ÛÛº               º
					echo       º          ÛÛÛÛÛÛÛºÛÛº  ÛÛº ÈÛÛÛÛÉ¼ ÛÛÛÛÛÛÛ»ÛÛº  ÛÛºÛÛÛÛÛÛÛ»ÛÛÛÛÛÛÛ»          º
					echo       º          ÈÍÍÍÍÍÍ¼ÈÍ¼  ÈÍ¼  ÈÍÍÍ¼  ÈÍÍÍÍÍÍ¼ÈÍ¼  ÈÍ¼ÈÍÍÍÍÍÍ¼ÈÍÍÍÍÍÍ¼          º
					echo       º                                                                     ver %VERSION% º
					echo       ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
					echo.
					echo.
					echo.
					
REM Recherche du dossier XMF dans la base de registre
REM Search for XMF folder in registry

IF NOT DEFINED HOME	(	echo Searching XMF folder...
						ping -n 2 127.0.0.1 > nul
						for /f "tokens=2*" %%a in ('reg query "HKCU\Software\FujiFilm\XMF\Installer\Prefs" /v Home') do set HOME=%%b
					)
					
					IF NOT DEFINED HOME 				(	echo   ^> Cannot find XMF install folder !
															echo.
															set ERR=1
															GOTO CHOICE
														)

					set HOME=%HOME:/=\%
					set HOME=%HOME%\
					set HOME=%HOME:\\=\%

					IF NOT EXIST "%HOME%"				(	echo   ^> Cannot find XMF install folder !
															echo.
															set ERR=1
															GOTO CHOICE
														)
														

echo   ^> XMF Location: "%HOME%"
echo.

					IF NOT EXIST "%HOME%install.log"	(	echo   ^> Incomplete installation folder !
															echo        Missing install.log file
															echo.
															set ERR=1
															GOTO CHOICE
														)

REM Recherche du GENSTORE via le fichier INSTALL.LOG
REM Search for GENSTORE via INSTALL.LOG file

IF NOT DEFINED GENSTR	(	echo Searching for GENSTORE ...
							ping -n 2 127.0.0.1 > nul
							for /f "tokens=5* delims= " %%a in ('findstr "(working)" "%HOME%install.log"') do set GENSTR=%%a %%b"
						)
						
					IF NOT DEFINED GENSTR				(	echo   ^> Cannot find GENSTORE folder !
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

					IF NOT EXIST "%GENSTR%"				(	echo   ^> Cannot find GENSTORE folder !
															echo.
															set ERR=2
															GOTO CHOICE
														)

					


					
echo   ^> GENSTORE location: "%GENSTR%"
echo.

					IF NOT EXIST "%GENSTR%Proforma"		(	echo   ^> The GENSTORE folder does not seem correct
															echo        Missing PROFORMA folder
															echo.
														)
														
														
REM Recherche du ICCSTORE via le fichier INSTALL.LOG
REM Search for ICCSTORE via INSTALL.LOG file

IF NOT DEFINED ICCSTR	(	echo Searching for ICCSTORE ...
							ping -n 2 127.0.0.1 > nul
							for /f "tokens=5* delims= " %%a in ('findstr "ICCSTORE," "%HOME%install.log"') do set ICCSTR=%%a %%b"
						)
						
					IF NOT DEFINED ICCSTR				(	echo   ^> Cannot find ICCSTORE folder !
															echo.
															set ERR=2
															GOTO CHOICE
														)

					set ICCSTR=%ICCSTR: "=%
					set ICCSTR=%ICCSTR:"=%
					set ICCSTR=%ICCSTR:/=\%
					set ICCSTR=%ICCSTR%\
					set ICCSTR=%ICCSTR:\\=\%

					IF %ICCSTR:~0,1% NEQ \ GOTO ICCLOCALNAME
															set ICCSTR=\%ICCSTR%
															set HOMEPATH=%cd%
															pushd %ICCSTR%
															set ICCSTR=%cd%\
															pushd %HOMEPATH%


:ICCLOCALNAME

					IF NOT EXIST "%ICCSTR%"				(	echo   ^> Cannot find ICCSTORE folder !
															echo.
															set ERR=3
															GOTO CHOICE
														)

					


					
echo   ^> ICCSTORE location: "%ICCSTR%"
echo.

					IF NOT EXIST "%ICCSTR%DevLinks"		(	echo   ^> The ICCSTORE folder does not seem correct
															echo        Missing DevLinks folder
															echo.
														)

:CHOICE
echo.
echo.
IF %ERR% NEQ 0	(			echo Press E to Edit paths or Q to Quit
							choice /C:EQ
				) ELSE (	echo Press E to Edit paths, C to Continue, or Q to Quit
							choice /C:EQC )
echo.
					IF %errorlevel%==1 GOTO EDITFOLDER
					IF %errorlevel%==2 exit
					IF %errorlevel%==3 GOTO PROCESS


:EDITFOLDER

REM Edition des dossiers XMF et Genstore
REM Editing XMF and Genstore folders

IF %ERR%==2 GOTO ERR2
IF %ERR%==3 GOTO ERR3

				echo Current XMF installation folder : "%HOME%"
				echo        New location (leave blank if no changes or * for auto-detect^)
				set /p NEWHOME= ^>
					IF DEFINED NEWHOME	set HOME=%NEWHOME%
					IF "%NEWHOME%"=="*" set HOME=
				echo.
				IF NOT DEFINED HOME (echo *auto-detect*) ELSE (echo %HOME%)
				echo.
				IF %ERR%==1 GOTO START

	:ERR2
				echo Current GENSTORE folder : "%GENSTR%"
				echo        New location (leave blank if no changes or * for auto-detect^)
				set /p NEWGENSTR= ^>
					IF DEFINED NEWGENSTR set GENSTR=%NEWGENSTR%
					IF "%NEWGENSTR%"=="*" set GENSTR=
				echo.
				IF NOT DEFINED GENSTR (echo *auto-detect*) ELSE (echo %HOME%)
				echo.
				GOTO START

	:ERR3
				echo Current ICCSTORE folder : "%ICCSTR%"
				echo        New location (leave blank if no changes or * for auto-detect^)
				set /p NEWICCSTR= ^>
					IF DEFINED NEWICCSTR set ICCSTR=%NEWICCSTR%
					IF "%NEWICCSTR%"=="*" set ICCSTR=
				echo.
				IF NOT DEFINED ICCSTR (echo *auto-detect*) ELSE (echo %HOME%)
				echo.
				GOTO START
				

:PROCESS

REM Sauvegarde des fichiers
REM Saving files
echo Starting SAVEALL
echo.
IF NOT DEFINED ARCHIVE set ARCHIVE=SaveAll.7z

IF EXIST %ARCHIVE% RENAME %ARCHIVE% "%date:/=%-%time::=%---%ARCHIVE%"

echo Saving files to %ARCHIVE%
ping 127.0.0.0 > nul

7z a %ARCHIVE% "%GENSTR%Proforma"
	set PROFORMA=%errorlevel%
7z a %ARCHIVE% "%HOME%data\Stabilizer\Preflight\PP*.ppp"
	set PPP=%errorlevel%
7z a %ARCHIVE% "%HOME%data\Stabilizer\Preflight\AL*.eal"
	set EAL=%errorlevel%
7z a %ARCHIVE% "%HOME%data\screens"
	set SCREENS=%errorlevel%
7z a %ARCHIVE% "%ICCSTR%"
	set ICC=%errorlevel%

echo.
echo.
echo.
IF %PPP%==0	( echo PPP files saved successfully !
	) ELSE	( echo       ! Error while saving PPP files ! )

echo.
echo.
IF %EAL%==0	( echo EAL files saved successfully !
	) ELSE	( echo       ! Error while saving EAL files ! )

echo.
echo.
IF %SCREENS%==0	( echo Screen Sets saved successfully !
		) ELSE	( echo       ! Error while saving Screen Sets ! )

echo.
echo.
IF %PROFORMA%==0	( echo PROFORMA folder saved successfully !
			) ELSE	( echo       ! Error while saving PROFORMA ! )
echo.
echo.
IF %ICC%==0	( echo ICCSTORE folder saved successfully !
			) ELSE	( echo       ! Error while saving ICCSTORE ! )
echo.
echo.
echo   ^> Saved file : %cd%\%ARCHIVE%
echo.
echo.
echo.
pause
GOTO EOF



:UPDATE

echo Fetching update...
ping 127.0.0.0 > nul
for /f "tokens=2 delims= " %%a in ('findstr "url" "version"') do set UPDATE=%%a
del /q version

	IF NOT DEFINED UPDATE	(	echo !! Update error !!
								pause
								GOTO START )

bitsadmin /cache /clear
bitsadmin /transfer Update %UPDATE% "%cd%\update.bat"

echo erreur : %errorlevel%
	IF %errorlevel% NEQ 0	(	echo !! Update error !!
								pause
								GOTO START )
							

start update.bat
exit


:EOF
