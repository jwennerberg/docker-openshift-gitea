#!/bin/bash
VERSION=1.10.0
docker build . -t quay.io/gpte-devops-automation/gitea:${VERSION}
docker tag quay.io/gpte-devops-automation/gitea:${VERSION} quay.io/gpte-devops-automation/gitea:latest
docker push quay.io/gpte-devops-automation/gitea:${VERSION}
docker push quay.io/gpte-devops-automation/gitea:latest
git tag ${VERSION}
git push origin ${VERSION}
