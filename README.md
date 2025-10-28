# Wisecow Application - Kubernetes Deployment

## 📌 Objective

**Containerize and deploy the Wisecow application on a Kubernetes environment** (Kind/Minikube), enabling automated CI/CD and secure TLS communication.

***

## 🚀 Features

- Containerized Wisecow server via Docker
- Kubernetes manifests for seamless cluster deployment
- Exposed as a Kubernetes Service for browser access
- Automated GitHub Actions CI/CD pipeline
- Secure TLS (HTTPS) support for all communication

***

## 📝 Requirements & Setup

### 1️⃣ Dockerization

- A **Dockerfile** is provided to build the Wisecow application container image.

### 2️⃣ Kubernetes Deployment

- **Deployment and Service manifests** included for easy rollout to any Kubernetes cluster (Kind/Minikube/etc.).
- Wisecow Service exposes the app on a stable port for browser accessibility.

### 3️⃣ CI/CD Pipeline

- **GitHub Actions workflow** builds and pushes the Docker image to your preferred container registry automatically whenever code changes.
- **[Challenge Goal]**: The pipeline can also auto-deploy the updated app to your Kubernetes cluster after successful image build.

### 4️⃣ TLS Implementation

- **[Challenge Goal]**: Secure TLS configuration ensures HTTPS communication to the Wisecow app.
- Steps or ingress manifest for TLS included/referenced.

***

## 📦 Expected Artifacts

In this repository, you’ll find:

- `wisecow.sh` – The Wisecow server script
- `Dockerfile` – Container definition for the app
- `deployment.yaml` and `service.yaml` – Kubernetes manifests
- `.github/workflows/ci.yml` – GitHub Actions for CI/CD (build, push, deploy)
- TLS configuration files/manifests/scripts (if applicable)

***

## 🛠️ Quick Start

### Local Test

```bash
sudo apt install fortune-mod cowsay -y 
./wisecow.sh
```
Open your browser at (http://localhost:4499).

### Build Container

```bash
docker build -t wisecow:latest .
```

### Deploy to Kubernetes

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```
*The app will be available at the exposed service port.*

### TLS Setup

- Follow the included manifest or docs to enable HTTPS via Kubernetes ingress or TLS proxy.

***

## 🤖 CI/CD

Automatic build/push/deploy using GitHub Actions on push to `main`.  
**Secrets required:** Set up your container registry credentials for the workflow.

***

## 🔒 TLS Support

Check manifests/docs for setting up secure HTTPS access to the Wisecow application.

***

## 👥 Repository Access

- This repository is **public** for demonstration and collaboration.

***

**End Goal:**  
Fast, automated, and secure deployment of the Wisecow app in Kubernetes—with a reliable CI/CD pipeline and TLS protection!
