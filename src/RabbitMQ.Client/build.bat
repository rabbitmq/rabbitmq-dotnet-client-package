rmdir /S /Q deploy
..\..\tools\NuGet.exe pack pkg\RabbitMQ.Client.nuspec
mkdir deploy
for /f %%a in ('dir /b /s .\*.nupkg') do call move /Y %%a deploy