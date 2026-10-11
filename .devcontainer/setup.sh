#!/bin/bash

set -e

AIRFLOW_VERSION=3.3.2
PYTHON_VERSION=3.11

CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/contraints-${PYTHON_VERSION}.txt"

python -m install -- upgrade pip

pip install "apache-airflow==${AIRFLOW_VERSION}" \
    --constraint "${CONSTRAINT_URL}"