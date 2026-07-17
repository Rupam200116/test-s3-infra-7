# Disables S3 remote backend so terraform init works in CI
# without needing the state bucket to exist first.
terraform {
  backend "local" {}
}
