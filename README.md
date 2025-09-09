# Containerization

## Goal

The goal of this project is to containerize a Django app. This includes creation of a virtual Python environment in the Docker container and creation of a Django superuser (for admin interface).

## Table of content

1. [Technologies](#Technologies)
2. [Quickstart](#Quickstart)

### TECHNOLOGIES

- Docker
- Bash
- Python 3.9
- Django 4.0.2
- Venv

### Quickstart

First, create a file (e.g., .env) that contains some necessary configuration parameters.

```text
DJANGO_SU_NAME=myAdminUser
DJANGO_SU_EMAIL=admin@example.com
DJANGO_SU_PASSWORD=mySuperSecretPassword
```

Now you can run the setup.sh script with this file as an argument.

```bash
./setup.sh path/to/environmentfile/.env
```