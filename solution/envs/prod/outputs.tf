output "vpc_id" { value = module.network.vpc_id }
output "subnet_ids" { value = module.network.subnet_ids }
output "instance_public_ip" { value = module.compute.public_ip }
