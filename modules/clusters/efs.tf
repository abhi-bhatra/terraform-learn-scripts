# resource "aws_efs_file_system" "efs" {
#    creation_token = "efs"
#    performance_mode = "generalPurpose"
#    throughput_mode = "bursting"
#    encrypted = "true"
#  tags = {
#      Name = "EFS"
#    }
#  }


# resource "aws_efs_mount_target" "efs-mt" {
#    count = var.availability_zones_count
#    file_system_id  = aws_efs_file_system.efs.id
#    subnet_id = aws_subnet.public[*].id
#    security_groups = [aws_security_group.efs.id]
#  }

# resource "aws_security_group" "efs" {
#    name = "efs-sg"
#    description= "Allow inbound efs traffic from EKS"
#    vpc_id = aws_vpc.my_vpc.id

#    ingress {
#      security_groups = [aws_security_group.eks_cluster.id]
#      from_port = 2049
#      to_port = 2049 
#      protocol = "tcp"
#    }     
        
#    egress {
#      security_groups = [aws_security_group.eks_cluster.id]
#      from_port = 0
#      to_port = 0
#      protocol = "-1"
#    }
#  }


 