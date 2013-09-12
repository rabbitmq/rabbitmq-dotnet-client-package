rmdir /S /Q deploy
mkdir deploy
..\tools\NuGet.exe pack RabbitMQ.Client\pkg\RabbitMQ.Client.nuspec
..\tools\NuGet.exe pack RabbitMQ.ServiceModel\pkg\RabbitMQ.ServiceModel.nuspec
for /f %%a in ('dir /b /s .\*.nupkg') do call move /Y %%a deploy
for /f %%a in ('dir /b /s .\deploy\*.nupkg') do call ..\..\tools\NuGet.exe push %%a