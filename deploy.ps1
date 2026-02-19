Write-Host "Build Backend..."
cd backend/demo
mvn clean package -DskipTests
docker build -t backend-infoline .
cd ../..

Write-Host "Deploy Kubernetes..."
kubectl apply -f k8s/backend-deployment.yaml
kubectl apply -f k8s/backend-service.yaml

Write-Host "Done."