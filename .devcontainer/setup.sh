#!/bin/bash

set -e

AIRFLOW_VERSION=3.3.2
PYTHON_VERSION=3.11

CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"

python3.11 -m pip install --upgrade pip

python3.11 -m pip install "apache-airflow==${AIRFLOW_VERSION}" \
    --constraint "${CONSTRAINT_URL}"

python3.11 -m pip show apache-airflow