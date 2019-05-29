FROM microsoft/aspnetcore:2.0-nanoserver-1709 AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/aspnetcore-build:2.0-nanoserver-1709 AS build
WORKDIR /src
COPY CoreApiStudent/CoreApiStudent.csproj CoreApiStudent/
RUN dotnet restore CoreApiStudent/CoreApiStudent.csproj
COPY . .
WORKDIR /src/CoreApiStudent
RUN dotnet build CoreApiStudent.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish CoreApiStudent.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "CoreApiStudent.dll"]
