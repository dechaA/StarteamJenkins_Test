 FROM mcr.microsoft.com/dotnet/framework/sdk AS build-env

 WORKDIR /app
 COPY . .

 RUN msbuild.exe /t:Build /p:Configuration=Release /p:OutputPath=out

 FROM microsoft/dotnet-framework:4.7.1
 WORKDIR /app
 COPY --from=build-env /app/out ./
 ENTRYPOINT ["dotnetapp.exe"]