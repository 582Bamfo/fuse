provider "aws" {
  region = var.region
}

provider "aws" {
  alias  = "new"
  region = var.region1
}
