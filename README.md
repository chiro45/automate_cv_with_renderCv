# CV Generator from YAML data

This project automatically generates my CV in both English and Spanish using data from YAML files and the `rendercv` tool.

## Project Structure

- `cv_en.yaml`: CV data in English.
- `cv_es.yaml`: CV data in Spanish.
- `build_en.sh`: Script to generate the English CV in PDF format.
- `build_es.sh`: Script to generate the Spanish CV in PDF format.
- `cvs_english/`: Output directory for the English CV.
- `cvs_spanish/`: Output directory for the Spanish CV.

## Dependencies

- **[RenderCV](https://github.com/rendercv/rendercv)**: A tool to create CVs from structured data.

## Usage

To generate the CVs, you need to have `rendercv` installed. Then, you can run the build scripts:

**Generate English CV:**
```bash
chmod +x build_en.sh && ./build_en.sh
```

**Generate Spanish CV:**
```bash
chmod +x build_es.sh && ./build_es.sh
```

The generated PDFs will be placed in the `cvs_english` and `cvs_spanish` directories, respectively.
