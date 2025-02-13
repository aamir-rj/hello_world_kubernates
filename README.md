# hello_world_kubernates
Before we start, make sure you have:

Docker → Download Here
Minikube → Download Here
Kubectl (Kubernetes CLI) → Install Guide

Check if everything is installed:
docker --version
minikube version
kubectl version --client

Minikube is a local Kubernetes cluster. Start it by running:

minikube start

kubectl get nodes


Step 1: Create a Simple Flask App

Create a new folder and add the following files.
app.py (Python Flask Application)

Step 2: Create a Docker Image
Create a Dockerfile in the same folder:

Build and tag the Docker image:
docker build -t my-flask-app .

Run it locally to test:
docker run -p 5000:5000 my-flask-app

Open http://localhost:5000 in your browser. You should see:

Step 3: Push Image to Docker Hub
& minikube -p minikube docker-env --shell powershell | Invoke-Expression


docker push <your-dockerhub-username>/my-flask-app:v1

 Step 4: Create Kubernetes Deployment
 Create a file called deployment.yaml:

 Apply it:
 kubectl apply -f deployment.yaml

Verify deployment:
kubectl get pods

Step 5: Expose as a Service

Create service.yaml:

Apply it:
kubectl apply -f service.yaml

Check the service:
kubectl get svc






Step 2: Reapply the Deployment
kubectl apply -f deployment.yaml

Then check the pods:
kubectl get pods -L app


Step 3: Verify the Image Exists in Minikube’s Docker
& minikube -p minikube docker-env --shell powershell | Invoke-Expression
docker images

Step 4: Access Your Application
kubectl apply -f service.yaml


Get the service URL:
minikube service flask-service --url

Then open the URL in your browser. You should see your Flask app’s message.

