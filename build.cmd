REM CALL src\.nuget\NuGet.exe restore src\Our.Umbraco.HttpsRedirect.sln
CALL "%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe" package\package.proj

@IF %ERRORLEVEL% NEQ 0 GOTO err
@EXIT /B 0
:err
@PAUSE
@EXIT /B 1