@echo off
:: ==============================
:: Creo parametric startup script.
:: ===============================
:: 2016/12/02
:: Steve Pearson
::
:: The startup process is three stage:
:: 1. Clone latest version of the standards repo
:: 2. Call the second stage boot script from the new standards repo
:: 3. Call <run_creo.bat> which actually starts Creo. This is in a seoparate file so
::    that the previous launch scripts may dynamically override it.
::
:: This allows the actual startup (second stage) to be updated remotely, post deployment.
::
:: Requirements:
:: 1. Python (does the heavy lifting)

set root_dir=%LOCALAPPDATA%\g2trc_creo_boot
set repo=https://stevepearson@bitbucket.org/stevepearson/g2trc_creo_setup
set std_dir=%root_dir%\creo_standards
set creo_trail_dir=%USERPROFILE%\.creo_trail_files

set args="%repo%" "%std_dir%" "%creo_trail_dir%"

echo Running bootstrap script...
python %root_dir%\creo_bootstrap.py %args% && (
echo.
echo Running second stage boot...
python %std_dir%\creo_start_2.py %args%
) && (
echo.
echo Running Creo...
call %std_dir%\run_creo.bat
) || (
echo.
echo Whoops, an error occured -- this could be James's fault.
pause
)

echo on
