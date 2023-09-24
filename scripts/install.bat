@echo off
pushd %~dp0\..\nuget
dotnet new install .\rbfx.template.*.nupkg
popd

