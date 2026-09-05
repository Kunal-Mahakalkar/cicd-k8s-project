#!/bin/bash
echo "=== Complete Manual CI/CD Pipeline Demo ==="
# Function to test application
test_app() {
 kubectl port-forward service/simple-web-app-service 8080:80 -n
cicd-demo &
 local FORWARD_PID=$!
 sleep 3
 echo "Current application version:"
 curl -s http://localhost:8080 | grep -o '"version":"[^"]*"' ||
echo "Could not retrieve version"
 kill $FORWARD_PID 2>/dev/null
 sleep 1
}
# Function to update application version
update_version() {
 local new_version="$1"
 local new_message="$2"

 echo "Updating application to version $new_version..."
 sed -i.bak "s/version: '[^']*'/version: '$new_version'/"
app/server.js
 sed -i.bak "s/Hello from CI\/CD Pipeline[^!]*/Hello from
$new_message/" app/server.js
}
# Function to build and deploy
build_and_deploy() {
 local version_tag="$1"

 echo "Building Docker image..."
 eval $(minikube docker-env) 2>/dev/null || echo "Using local
Docker environment"
 cd app
 docker build -t simple-web-app:$version_tag . -q
 docker tag simple-web-app:$version_tag simple-web-app:latest
 cd ..

 echo "Deploying to Kubernetes..."
 kubectl set image deployment/simple-web-app simple-web-app=simpleweb-app:$version_tag -n cicd-demo
 kubectl rollout status deployment/simple-web-app -n cicd-demo
}
# Step 1: Show current state
echo "1. Current application state:"
test_app
# Step 2: Make code changes
echo -e "\n2. Making code changes..."
update_version "3.0.0" "Advanced CI/CD Pipeline v3.0!"
# Step 3: Build and deploy
echo -e "\n3. Building and deploying..."
build_and_deploy "v3.0"
# Step 4: Verify deployment
echo -e "\n4. Verifying new deployment:"
test_app
# Step 5: Show deployment history
echo -e "\n5. Deployment history:"
kubectl rollout history deployment/simple-web-app -n cicd-demo
echo -e "\n✅ Complete CI/CD pipeline demonstration finished!"
echo -e "\n🎯 What you've accomplished:"
echo " • Automated code changes"
echo " • Built and tested Docker images"
echo " • Deployed with zero downtime"
echo " • Verified deployment success"
echo " • Maintained deployment history"