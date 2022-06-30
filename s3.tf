resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-tf-3006-bucket"

  tags = {
    Name        = "My-bucket"
    Environment = "Dev"
  }
}


// to enable versionig 

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.demo_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

// life cycle rule for the bucket 

resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
  bucket = aws_s3_bucket.demo_bucket.bucket

  rule {
    id = "log"

    expiration {
      days = 90
    }

    filter {
      and {
        prefix = "log/"

        tags = {
          rule      = "log"
          autoclean = "true"
        }
      }
    }

    status = "Enabled"

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }
  }

  rule {
    id = "tmp"

    filter {
      prefix = "tmp/"
    }

    expiration {
      date = "2023-01-13T00:00:00Z"
    }

    status = "Enabled"
  }
}