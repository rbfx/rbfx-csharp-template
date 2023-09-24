@REM @echo off

set "folder=%~dp0..\test"

if exist "%folder%" (
    rd /s /q "%folder%"
)

if not exist "%folder%" (
    mkdir "%folder%"
)

pushd %~dp0\..\test
dotnet new rbfx
popd

