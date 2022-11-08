#!/bin/bash

BASE_FILE="script.yaml"
NEW_FILE="new-app.yaml"
DOCKER_BASE="../dockerize"
BASE_DIR="$(pwd)"
IMAGE_TAG="webserver:$(date +%d-%m-%Y-%H-%M-%S)"


echo "[+] Docker build..."
[ -d "${DOCKER_BASE}" ] && cd ${DOCKER_BASE}
docker build -f Dockerfile -t ${IMAGE_TAG} .

echo "[+] Creating the new file with the new Docker tag [${IMAGE_TAG}]"
cd ${BASE_DIR}
sed "s/MY_NEW_IMAGE/${IMAGE_TAG}/g" ${BASE_FILE} > ${NEW_FILE}

echo "[+] Running Dry-run"
kubectl diff -f ${NEW_FILE} > app.diff