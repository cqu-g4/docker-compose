#!/bin/bash
DEPLOYUSERNAME="csangharsha"
PASSWORD="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"
echo "$PASSWORD" | docker login https://ghcr.io -u $DEPLOYUSERNAME --password-stdin
docker-compose -f docker-compose.yml up -d
docker logout ghcr.io