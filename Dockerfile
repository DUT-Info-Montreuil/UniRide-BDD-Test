FROM postgres:16.3-alpine

LABEL author="Uniride"
LABEL description="Postgres Image for Uniride TEST"
LABEL version="1.0"

WORKDIR /scripts

ARG POSTGRES_USER
ARG POSTGRES_PASSWORD
ARG POSTGRES_DB

# Set environment variables for postgres
ENV POSTGRES_USER=$POSTGRES_USER \
    POSTGRES_USER=$POSTGRES_USER \
    POSTGRES_DB=$POSTGRES_DB

# Copy the schema and insertion scripts to the docker-entrypoint-initdb.d directory
COPY insertion_test_uniride.sql /docker-entrypoint-initdb.d/script.sql
COPY schema_test_uniride.sql /docker-entrypoint-initdb.d/zscript.sql


ENTRYPOINT ["docker-entrypoint.sh"]
CMD [ "postgres" ]