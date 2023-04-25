resource "aws_s3_bucket" "tenable_cs_demo_s3_bucket" {
  bucket = "tenablecsdemos3bucket"
  acl    = "public-read"
  tags   = var.default_tags

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "<master_kms_key_id>"
        sse_algorithm     = "aws:kms"
      }
    }
  }
}