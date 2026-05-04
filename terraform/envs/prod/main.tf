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
    }
  }
}
