FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 80

ENV ASPNETCORE_URLS=http://+:80

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["demo01.csproj", "./"]
RUN dotnet restore "demo01.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "demo01.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "demo01.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "demo01.dll"]
