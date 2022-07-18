# google-cloud-shell

This repository can be used to organize your shell environment in Cloud Shell for each project. Each project has its own folder with various dotfiles that get loaded when Cloud Shell starts.

## Initial Setup

1. Clone the respository to `${HOME}/.google-cloud-shell`

``` bash
git clone https://github.com/arueth/google-cloud-shell.git ${HOME}/.google-cloud-shell
```

1. Run the `initial_setup.sh` script

``` bash
${HOME}/.google-cloud-shell/bin/initial_setup.sh
```

The `initial_setup.sh` script appends the [bashrc_addition.sh](templates/setup/bashrc_addition.sh) file to the end of `${HOME}/.bashrc` file if it is not already in the file.

## Project Setup

1. Select a project in the console before starting Cloud Shell or set the project in Cloud Shell

``` bash
gcloud config set project <PROJECT_ID>
```

1. Verify the `${GOOGLE_CLOUD_PROJECT}` is set

``` bash
echo "GOOGLE_CLOUD_PROJECT=${GOOGLE_CLOUD_PROJECT}"
```

1. Run the `setup_new_project.sh` script

``` bash
${HOME}/.google-cloud-shell/bin/setup_new_project.sh
```

The `setup_new_project.sh` script creates a project directory(`${HOME}/projects/${GOOGLE_CLOUD_PROJECT}`) and copies the template files from the [templates/project](templates/project) folder to the project directory.
