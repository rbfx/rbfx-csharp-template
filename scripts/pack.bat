@echo off

pushd %~dp0..\thirdperson

set "folder=%~dp0..\nuget\"
set "version=0.0.1"

if not "%~1"=="" (
    set "version=%~1"
)

if not exist "%folder%" (
    mkdir "%folder%"
)

del %folder%/*.nupkg
dotnet pack ./RbfxTemplate.csproj -o %folder% -p:PackageVersion=%version%
popd