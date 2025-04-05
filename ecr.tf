resource "aws_ecr_repository" "medusa_repo" {
  name = "medusa-repo"
  tags = {
    Name = "medusa-repo"
  }
}
