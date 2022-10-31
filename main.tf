module "test-cluster" {
    source                   = "./modules/clusters"

    region                   = "us-west-1"
    availability_zones       = ["us-west-1a", "us-west-1c"]
    availability_zones_count = 2
    vpc_cidr                 = "10.0.0.0/16"
    env                      = "staging"
    project                  = "TFstaging"
    subnet_cidr_bits         = 8
    # db_username              = "abhinav"
    # db_password              = "abhinav2001" 
}