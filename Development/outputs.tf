output "compute_instance_id" {
  value = module.dev_compute_1.instance_id
}

output "elb_dns_name" {
  value = module.dev_elb_1.elb_dns_name
}

output "elb_public_dns_name" {
  value = module.dev_elb_1_public.elb_dns_name
}

output "iam_instance_profile" {
  value = module.dev_iam_1.instprofile
}

output "vpc_id" {
  value = module.dev_vpc_1.vpc_id
}

output "public_subnets_id" {
  value = module.dev_vpc_1.public_subnets_id
}

output "private_subnets_id" {
  value = module.dev_vpc_1.private_subnets_id
}

output "nat_gateway_id" {
  value = module.dev_natgw_1.natgw_id
}

output "security_group_id" {
  value = module.dev_sg_1.sg_id
}
