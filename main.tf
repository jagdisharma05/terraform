provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "./vpc.tf"
}

module "ecs" {
  source = "./ecs.tf"
}

module "alb" {
  source = "./alb.tf"
}

module "ecr" {
  source = "./ecr.tf"
}

module "iam" {
  source = "./iam.tf"
}

module "ssm" {
  source = "./ssm.tf"
}
