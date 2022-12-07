#!/bin/bash

function dependency_checks() {
    local fulfilled=y

    if ! command -v docker > /dev/null; then
        echo "==> Docker not found!"
        fulfilled=n
    fi

    if ! command -v docker compose > /dev/null; then
        echo "==> Docker compose not found!"
        fulfilled=n
    fi

    if [ "$fulfilled" != y ]; then
        exit 1
    fi

    echo "==> Dependencies fulfilled"
}

function run_services() {

    docker compose -f pgadmin/docker-compose.yml up -d --no-recreate

    if [ $? -eq 0 ]; then
        PGADMIN_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' pgadmin4)

        echo "==> Pgadmin instance running in the background, give it a minute to fully start"
        echo "==> Pgadmin4 console available at http://${PGADMIN_IP}"
        echo "==>     Credentials:    root@buildbar.eu   root"
    else
        echo "==> Something went wrong... Check https://github.com/buildbar/api/blob/main/scripts/README.md#troubleshooting for troubleshooting"
    fi
}

echo "==> Automatic script to start postgres and pgadmin4 services"
echo "==> Run 'docker compose -f pgadmin/docker-compose.yml down -v' to stop them"

dependency_checks
run_services
