resource "aws_s3_bucket" "my-bucket" {
bucket = "my-bucket-${random_id.my-random-id.dec}"
}

resource "random_id" "my-random-id" {
byte_length = 8
}