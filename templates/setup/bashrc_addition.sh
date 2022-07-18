
PROJECT_DIR=${HOME}/projects/${GOOGLE_CLOUD_PROJECT}
if [ -d "${PROJECT_DIR}" ]; then
        echo "Changing to project directory: ${PROJECT_DIR}"
        cd ${PROJECT_DIR}

        export GOOGLE_CLOUD_PROJECT_DIR=${PROJECT_DIR}

        if [ -f "${PROJECT_DIR}/.project.env" ]; then
                echo "Sourcing project environment file: ${PROJECT_DIR}/.project.env"
                source ${PROJECT_DIR}/.project.env
        fi
fi
