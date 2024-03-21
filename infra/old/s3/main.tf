resource "aws_s3_bucket" "s3" {
  bucket = "devtb-state"
}

resource "aws_s3_bucket_versioning" "version" {
  bucket = aws_s3_bucket.s3.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.s3.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = data.aws_kms_key.key.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

data "aws_kms_key" "key" {
  key_id = "82152d04-96e3-49e5-83f1-f14ec4391a10"
}