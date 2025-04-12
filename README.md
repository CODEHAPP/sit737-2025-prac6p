# SIT737 - Practical 6P: Deploying a Node.js App on Kubernetes

## 📦 Task Overview

This task demonstrates how to deploy a containerized Node.js application (from Practical 5.1P) onto a Kubernetes cluster using Google Cloud Kubernetes Engine (GKE). The project includes creating the Docker image, setting up the Kubernetes cluster, deploying the application, and exposing it via a service.

---

## 🧰 Tools & Technologies Used

- Google Cloud Platform (GCP) - Kubernetes Engine
- Kubernetes CLI (`kubectl`)
- Docker CLI
- Node.js
- Visual Studio Code
- GitHub

---

## ✅ Prerequisites

- Node.js application built and tested (from 5.1P)
- Docker installed and configured
- Google Cloud account and project created
- Google Kubernetes Engine API enabled
- `kubectl` and `gcloud` CLI installed and authenticated

---

## 🚀 Steps to Reproduce

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/sit737-2025-prac6p.git
cd sit737-2025-prac6p
2. Build and Push Docker Image
# Build Docker image
docker build -t gcr.io/YOUR_PROJECT_ID/nodejs-kube-app .

# Push to Google Container Registry (GCR)
docker push gcr.io/YOUR_PROJECT_ID/nodejs-kube-app
3. Create Kubernetes Cluster
# Create a 1-node cluster in australia-southeast1
gcloud container clusters create nodejs-cluster \
  --num-nodes=1 \
  --region=australia-southeast1
4. Connect kubectl to the Cluster
gcloud container clusters get-credentials nodejs-cluster --region=australia-southeast1
5. Deploy the App to Kubernetes
kubectl apply -f deployment.yaml
6. Expose the App with a Service
kubectl apply -f service.yaml
7. Get External IP and Access the App
kubectl get service
Open the EXTERNAL-IP in your browser to access the Node.js app.

📂 Project Structure
sit737-2025-prac6p/
│
├── Dockerfile
├── deployment.yaml
├── service.yaml
├── README.md
└── app/
    ├── server.js
    └── package.json
🖼 Screenshots (Include in GitHub)
✅ Cluster created in GCP
<img width="656" alt="Screenshot 2025-04-12 at 12 34 33 pm" src="https://github.com/user-attachments/assets/20d6797e-a161-4199-8f3d-f510f37138da" />

✅ Docker image pushed to GCR

✅ Successful output of kubectl apply

✅ Screenshot showing app accessible via browser

✅ kubectl get pods and kubectl get service terminal output

