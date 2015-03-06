BetterVoice Client Dockerfile
=============================

This project can be used to deploy the BetterVoice client inside a Docker container.

#### Build The Container

```
$] git clone https://github.com/BetterVoice/bv-client-container.git
$] sudo docker build -t bettervoice/bv-client-container:1.0 bv-client-container/
```

#### Run The Container

```
$] sudo docker run -i -t -e GIT_USER=github_username -e GIT_PW=github_password -e GIT_REPO=testing -e GIT_BRANCH=deploy bettervoice/bv-client-container:1.0 /bin/bash
```

#### Deploy BetterVoice

When the container prompt comes up just run deploy-bv which is located in the /usr/bin directory.

```$] deploy-bv```

This script will download the source into the /usr/src/bv-app directory and subsequent runs will run the **Deployment Workflow** described in the bv-app project.
