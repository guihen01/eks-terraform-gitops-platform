provider "aws" {
  region = "ca-central-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"
  
  cluster_name    = "simple-platform"
  cluster_version = "1.28"

  vpc_id     = "vpc-0518bdeefb96a886d"
  subnet_ids = ["subnet-04ab7f22ddced88f9", "subnet-07b548eec9ff23574"]

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      min_size     = 2
      max_size     = 3
	  
	instance_types = ["t3.medium"]

    ami_type = "AL2_x86_64"   # 👈 AJOUT CRITIQUE  
	  
    }
  }
  
  # 👇 rendre le clustr public
  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true
  
  # 👇 AJOUT IMPORTANT (IAM → Kubernetes)
  access_entries = {
  admin = {
    principal_arn = "arn:aws:iam::760606734887:user/Henri"

    policy_associations = {
      admin = {
        policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
        access_scope = {
          type = "cluster"
        }
      }
    }
  }
}
  
}
