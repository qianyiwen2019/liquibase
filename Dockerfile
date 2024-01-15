FROM bellsoft/liberica-openjdk-alpine:19

WORKDIR /
RUN mkdir -p ./internal/lib

COPY liquibase-dist/target/internal/lib ./internal/lib
COPY third-party-dependency/* ./internal/lib
COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh

ENV LIQUIBASE_HOME=./ \
    JAVA_OPTS= \
    CLASSPATH= \
    URL=\
    USERNAME=\
    PASSWORD=\
    REFERENCE_URL=\
    REFERENCE_USERNAME=\
    REFERENCE_PASSWORD=

ENTRYPOINT ["/entrypoint.sh"]
