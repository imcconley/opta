resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = aws_subnet.private_subnets[*].id
  tags = {
    "purpose": "postgres"
    "ignore-if-seemingly-out-of-place": "yup"
  }
}