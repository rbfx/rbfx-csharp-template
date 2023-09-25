@echo off
pushd %~dp0\..\nuget
dotnet new install .\rbfx.template.thirdperson.*.nupkg
popd

