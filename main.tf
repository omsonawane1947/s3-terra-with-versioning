resource "aws_s3_bucket" "terraform-bucket" {
    bucket = "our-terraform11-tfstate-file-bucket"
    tags = {
        Name = "first-bucket"
        Env = "Dev"
        Owner = "Ankit"
    }
  
}

resource "aws_s3_bucket_versioning" "my-bucket-versioning" {
  bucket = aws_s3_bucket.terraform-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}