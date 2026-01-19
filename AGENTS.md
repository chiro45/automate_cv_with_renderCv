# Project Agents

This file describes the automated agents used in this project.

## 1. English CV Builder (`build_en.sh`)

This agent is a shell script responsible for automatically generating the English version of the CV.

### Triggers

This agent is manually triggered by executing the script from the command line.

### Actions

1.  **Creates Output Directory**: Ensures the `cvs_english/` directory exists.
2.  **Renders CV**: Uses `rendercv` to generate the CV in multiple formats (PDF, PNG, Markdown, HTML) from the `cv_en.yaml` data file.
3.  **Versions and Renames**: Moves the generated PDF to the `cvs_english/` directory and renames it to `CV_Luciano_Chiroli_EN_2025.pdf`, handling versioning if the file already exists.
4.  **Cleans Up**: Removes the temporary `rendercv_output` directory.

## 2. Spanish CV Builder (`build_es.sh`)

This agent is a shell script responsible for automatically generating the Spanish version of the CV.

### Triggers

This agent is manually triggered by executing the script from the command line.

### Actions

1.  **Creates Output Directory**: Ensures the `cvs_spanish/` directory exists.
2.  **Renders CV**: Uses `rendercv` to generate the CV in multiple formats (PDF, PNG, Markdown, HTML) from the `cv_es.yaml` data file.
3.  **Versions and Renames**: Moves the generated PDF to the `cvs_spanish/` directory and renames it to `CV_Luciano_Chiroli_ES_2025.pdf`, handling versioning if the file already exists.
4.  **Cleans Up**: Removes the temporary `rendercv_output` directory.
