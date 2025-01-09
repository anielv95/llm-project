resource "aws_ecr_repository" "aws-image-registry" {
  name                 = "aws-ir"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}