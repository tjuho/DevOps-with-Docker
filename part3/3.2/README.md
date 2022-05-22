## Github2Dockerhub
Builds and deploys from github to dockerhub.
# Build
docker build -t deploy .
# Usage
docker run -v /var/run/docker.sock:/var/run/docker.sock deploy GIT_REPOSITORY_URL DOCKERHUB_USERNAME DOCKERHUB_PASSWORD DOCKERHUB_REPOSITORY:TAG
