ARG POSTGRES_VERSION=15

FROM postgres:${POSTGRES_VERSION}

ENV DB_TYPE=
ENV PG_VERSION=
ENV TOTAL_MEM=
ENV CPU_COUNT=
ENV MAX_CONN=
ENV STGE_TYPE=

# Run the rest of the commands as postgres user
USER postgres:postgres

# Scripts pgtuning
COPY pgtune.sh /tmp
COPY pgtuned.sh /docker-entrypoint-initdb.d
