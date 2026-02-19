provider "aws" {
  region = "eu-west-3" # Paris
}

resource "aws_eks_cluster" "infoline" {
  name     = "infoline-cluster"
  role_arn = "arn:aws:iam::123456789012:role/EKSRole" # rôle IAM déjà créé

  vpc_config {
    subnet_ids = ["subnet-123456", "subnet-456789"]
  }

  # version Kubernetes
  version = "1.27"
}

output "cluster_endpoint" {
  value = aws_eks_cluster.infoline.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.infoline.name
}