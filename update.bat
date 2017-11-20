@echo off
@rem http://media.steampowered.com/installer/steamcmd.zip
SETLOCAL ENABLEDELAYEDEXPANSION

:: DEFINE the following variables where applicable to your install

    SET STEAMLOGIN=user password
    SET GAMESTEAMID=Game ID

    SET GAMEPATH=Path to game
        SET STEAMPATH=Path to steam


:: _________________________________________________________

echo.
echo     You are about to update your game
echo        Dir: %GAMEPATH%
echo        Branch: %GAMESTEAMID%
echo.
%STEAMPATH%\steamcmd.exe +login %STEAMLOGIN% +force_install_dir %GAMEPATH% +"app_update %GAMESTEAMID%" +quit
echo.
echo     Your game is now up to date
exit

