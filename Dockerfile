FROM mcr.microsoft.com/mssql/server:2019-latest

ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Developer

EXPOSE 1433

CMD ["/opt/mssql/bin/sqlservr"]
