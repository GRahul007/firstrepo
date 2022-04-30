module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0fb653ca2d3203ac1"
  instance_type          = "t2.micro"
  key_name               = "rahul1_aws"
  monitoring             = true
  vpc_security_group_ids = ["sg-0066db7c0cbbb6a03"]
  subnet_id              = "subnet-0a42fa97d7ad048ce"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
resource "aws_s3_bucket" "onebucket" {
   bucket = "rah1412"
   acl = "private"
   versioning {
      enabled = true
   }
   tags = {
     Name = "terrform14"
     Environment = "Dev"
   }
}

