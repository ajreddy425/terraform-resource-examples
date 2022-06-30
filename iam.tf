// iam role to ec2 instance

resource "aws_iam_role" "test_role" {
  name = "terraform-s3-role-3006"

  assume_role_policy = file("./files/assume_role.json")

  tags = {
    tag-key = "s3role-3006"
  }
}

// iam instance profile

resource "aws_iam_instance_profile" "test_profile" {
  name = "test_profile"
  role = aws_iam_role.test_role.name
}