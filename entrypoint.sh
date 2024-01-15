#!/bin/sh
exec java $JAVA_OPTS -jar $LIQUIBASE_HOME/internal/lib/liquibase-core.jar \
    diff \
    --classpath=$CLASSPATH \
    --url=$URL \
    --username=$USERNAME \
    --password=$PASSWORD \
    --referenceUrl=$REFERENCE_URL \
    --referenceUsername=$REFERENCE_USERNAME \
    --referencePassword=$REFERENCE_PASSWORD