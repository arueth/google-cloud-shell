#!/usr/bin/env bash

SCRIPT_PATH="$(
  cd "$(dirname "$0")" >/dev/null 2>&1
  pwd -P
)"
REPOSITORY_ROOT=${SCRIPT_PATH%/*}

if grep 'PROJECT_DIR=${HOME}/projects/${DEVSHELL_PROJECT_ID}' ${HOME}/.bashrc &>/dev/null ; then
    echo "bashrc addition has already been added to '${HOME}/.bashrc'"
else
    echo "Appending '${REPOSITORY_ROOT}/templates/setup/bashrc_addition.sh' to '${HOME}/.bashrc'"
    cat ${REPOSITORY_ROOT}/templates/setup/bashrc_addition.sh >> ${HOME}/.bashrc
fi

exit 0