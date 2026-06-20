FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

RUN mkdir -p /var/opt/mssql \
    && chown -R 10001:0 /var/opt/mssql

ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Developer

USER 10001

EXPOSE 1433

CMD ["/opt/mssql/bin/sqlservr"]
