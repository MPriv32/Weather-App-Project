module "ecs" {
  source = "./ecs"

  service_subnets  = [module.vpc.subnet_1]
  pcp_service_sg = [module.vpc.pcp_service_sg]
  task_role_arn = module.iam.ecs_task_role_arn
}

module "vpc" {
  source = "./vpc"

}

module "iam" {
  source = "./iam"
}