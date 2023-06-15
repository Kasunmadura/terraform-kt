provider "aws" {
  region = var.aws_region
  default_tags {
    tags = merge(
      local.basic_tags,
      {
        Cluster_Environment = var.environment
        Region              = var.aws_region
      },
    )
  }
}