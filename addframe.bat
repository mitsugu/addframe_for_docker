@ECHO OFF
setlocal
set inputpath=%1
set outputpath=%2
::echo inputpath : %inputpath%
::echo outputpath : %outputpath%
for /F "delims=" %%F in ("%inputpath%") do set fname=%%~nxF
for /F "delims=" %%F in ("%inputpath%") do set indirpath=%%~dpF
::echo indirpath : %indirpath%
::echo fname : %fname%
docker run --rm --name addframe -v %indirpath%:/mnt/input -v %outputpath%:/mnt/output -it orzbruford/addframe /mnt/input/%fname% /mnt/output/

::for /f "usebackq delims=" %%A in (`cd`) do set PWD=%%A
::echo "now : "%PWD%

