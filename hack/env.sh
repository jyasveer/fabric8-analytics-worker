#!/usr/bin/bash

RABBIT_HOST=${RABBITMQ_SERVICE_SERVICE_HOST:-coreapi-broker}
CUCOS_HOST=${BC_SERVER_SERVICE_HOST:-coreapi-server}
POSTGRES_HOST=${PGBOUNCER_SERVICE_HOST:-coreapi-pgbouncer}
ANITYA_HOST=${ANITYA_SERVICE_HOST:-anitya-server}

RABBIT_PORT=${RABBITMQ_SERVICE_SERVICE_PORT:-5672}
CUCOS_PORT=${BC_SERVER_SERVICE_PORT:-5000}
POSTGRES_PORT=${PGBOUNCER_SERVICE_PORT:-5432}
ANITYA_PORT=${ANITYA_SERVICE_PORT:-5000}

export CCS_CELERY_BROKER=amqp://guest@${RABBIT_HOST}:${RABBIT_PORT}
export CCS_CUCOS_SERVER=http://${CUCOS_HOST}:${CUCOS_PORT}
export CCS_POSTGRES=postgresql://${POSTGRESQL_USER}:${POSTGRESQL_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRESQL_DATABASE}
export CCS_ANITYA=http://${ANITYA_HOST}:${ANITYA_PORT}
