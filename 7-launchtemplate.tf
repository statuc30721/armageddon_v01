# Retrieve the latest Amazon Linux AMI.

data "aws_ami" "latest-amazon-linux-image" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }

  filter {
    name = "architecture"
    values = ["x86_64"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]

  }
}

output "aws-ami_id" {
  value = data.aws_ami.latest-amazon-linux-image.id
}

/*
#----------------------------------------------------#
# Create SSH keys

resource "tls_private_key" "linux_appserver_key" {
    algorithm = "RSA"
    rsa_bits = 4096
  
}
resource "aws_key_pair" "auto_generated_key" {
    key_name = linux_appserver_key
    public_key = tls_private_key.linux_appserver_key.public_key_openssh
  
}
*/

#----------------------------------------------------#
# Tokyo Region
resource "aws_launch_template" "app1_Tokyo_LT" {
    name_prefix = "app1_Tokyo_LT"
    #image_id = data.aws_ami.latest-amazon-linux-image.id
    image_id = "ami-023ff3d4ab11b2525"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.ASG01-SG03-TYO-servers.id]
    key_name = "linux_appserver_key"
    provider = aws.tokyo

# Install software on the Amazon EC2 Instance.
# This calls a local script which runs on each EC2 VM instance.

user_data = base64encode(file("./entry-script.sh"))
    
    tag_specifications {
        resource_type = "instance"
        tags = {
          Name = "app1_TYO_LT"
          Service = "application1"
          Owner = "Frodo"
          Planet = "Arda"     
          }
        }
    
    lifecycle {
        create_before_destroy = true
    }
}

#---------------------------------------------#
# New York Region
resource "aws_launch_template" "appl1_NY_LT" {
    name_prefix = "appl1_NewYork_LT"
    image_id = data.aws_ami.latest-amazon-linux-image.id
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.ASG01-SG03-NY-servers.id]
    key_name = "linux_appserver_key"
    provider = aws.newyork

# Install software on the Amazon EC2 Instance.
# This calls a local script which runs on each EC2 VM instance.

user_data = base64encode(file("./entry-script.sh"))
    
    tag_specifications {
        resource_type = "instance"
        tags = {
          Name = "appl1_NewYork_LT"
          Service = "application1"
          Owner = "Frodo"
          Planet = "Arda"     
          }
        }
    
    lifecycle {
        create_before_destroy = true
    }
}

#---------------------------------------------#
# London Region
resource "aws_launch_template" "appl1_London_LT" {
    name_prefix = "appl1_London_LT"
    image_id = data.aws_ami.latest-amazon-linux-image.id
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.ASG01-SG03-LONDON-servers.id]
    key_name = "linux_appserver_key"
    provider = aws.london

# Install software on the Amazon EC2 Instance.
# This calls a local script which runs on each EC2 VM instance.

user_data = base64encode(file("./entry-script.sh"))
    
    tag_specifications {
        resource_type = "instance"
        tags = {
          Name = "appl1_London_LT"
          Service = "application1"
          Owner = "Frodo"
          Planet = "Arda"     
          }
        }
    
    lifecycle {
        create_before_destroy = true
    }
}

