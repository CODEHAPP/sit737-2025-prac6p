# SIT737 5.2D: Dockerization - Publishing the Microservice into the Cloud

## Overview
This project is part of SIT737 Cloud Native Application Development, focusing on containerizing a microservice and deploying it to a private container registry on Google Cloud.

## Prerequisites
Before proceeding, ensure you have the following tools installed:
- [Git](https://git-scm.com/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Node.js](https://nodejs.org/en/download/)
- [Docker](https://www.docker.com/)
- [Google Cloud CLI](https://cloud.google.com/sdk/docs/install)

## Project Setup
### Clone the Repository
```sh
 git clone https://github.com/CODEHAPP/sit737-2025-prac5d.git
 cd sit737-2025-prac5d
```

### Install Dependencies
```sh
 npm install
```

## Dockerization Process
### Step 1: Create a Private Container Registry on Google Cloud
1. Open [Google Cloud Console](https://console.cloud.google.com/)
2. Enable **Container Registry API**
3. Create a new container registry:
   ```sh
   gcloud artifacts repositories create my-docker-registry \
       --repository-format=docker \
       --location=us-central1 \
       --description="My private Docker registry"
   ```
![image](https://github.com/user-attachments/assets/e803ff20-219e-4b21-8b3c-a443da0607d7)

### Step 2: Authenticate Docker with Google Cloud
```sh
gcloud auth configure-docker
```

### Step 3: Build the Docker Image
```sh
docker build -t gcr.io/sit737-25t1-feng-2a9fd31/my-microservice:latest .
```

### Step 4: Push the Docker Image to Google Cloud Registry
```sh
docker push gcr.io/sit737-25t1-feng-2a9fd31/my-microservice:latest
```

### Step 5: Verify the Deployment
Run the following command to ensure the microservice is working correctly:
```sh
docker run -d -p 3000:3000 gcr.io/sit737-25t1-feng-2a9fd31/my-microservice:latest
```
Then, visit `http://localhost:3000` in your browser.

## Repository Structure
```
.
├── Dockerfile
├── package.json
├── server.js
├── README.md
└── ... other project files
```


