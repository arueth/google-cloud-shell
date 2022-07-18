#!/usr/bin/env bash

SCRIPT_PATH="$(
  cd "$(dirname "$0")" >/dev/null 2>&1
  pwd -P
)"
REPOSITORY_ROOT=${SCRIPT_PATH%/*}

if [ -z ${GOOGLE_CLOUD_PROJECT} ]; then
	echo "GOOGLE_CLOUD_PROJECT is not set, select a project before starting Cloud Shell or set the current project using gcloud config set project <PROJECT_ID>"
	exit -1
fi

PROJECT_DIR="${HOME}/projects/${GOOGLE_CLOUD_PROJECT}"
if [ ! -d ${PROJECT_DIR} ]; then
	echo "Creating project directory '${PROJECT_DIR}'"
	mkdir -p ${PROJECT_DIR}

    echo "Copying project template files to '${PROJECT_DIR}'"
    cp -RT ${REPOSITORY_ROOT}/templates/project ${PROJECT_DIR}
else
	echo "project directory '${PROJECT_DIR}' already exist"
    exit 1
fi

exit 0
