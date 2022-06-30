resource "aws_instance" "role-test" {
  ami                  = "ami-0cff7528ff583bf9a"
  instance_type        = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.test_profile.name
  tags = {
    Name = "demo-ec2-s3"
  }
}