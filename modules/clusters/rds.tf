# resource "aws_security_group" "secgrp-rds" {

#   name        = "secgrp-rds"
#   description = "Allow MySQL Port"
#   vpc_id      = aws_vpc.my_vpc.id
 
#   ingress {
#     description = "Allowing Connection for SSH"
#     from_port   = 3306
#     to_port     = 3306
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "TFRDS-Security"
#   }
# }

# resource "aws_db_subnet_group" "rds_subnet" {
#   name        = "rds_subnet"
#   description = "RDS DB subnet"
#   subnet_ids  = aws_subnet.private[*].id
# }

# resource "aws_db_instance" "rds" {
#   engine                 = "mysql"
#   engine_version         = "5.7"
#   instance_class         = "db.t2.micro"
#   allocated_storage      = 10
#   storage_type           = "gp2"
#   name                   = "tfsampledb"
#   username               = var.db_username
#   password               = var.db_password
#   publicly_accessible    = true
#   skip_final_snapshot    = true
#   db_subnet_group_name   = aws_db_subnet_group.rds_subnet.id
#   vpc_security_group_ids = [aws_security_group.secgrp-rds.id]
#   tags = {
#     Name = "${var.project}-RDS"
#   }
# }
