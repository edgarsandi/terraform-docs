/**
 * Example of 'foo_bar' module in `foo_bar.tf`.
 *
 * - list item 1
 * - list item 2
 *
 * Even inline **formatting** in _here_ is possible.
 * and some [link](https://domain.com/)
 */

terraform {
  required_version = ">= 0.12"
  required_providers {
    random = ">= 2.2.0"
    aws = ">= 2.15.0"
  }
}

provider "template" {
  version = "= 2.1.2"
}

provider "template" {
  version = "= 2.1.2"
}

provider "google" {
  project = "acme-app"
  region  = "us-central1"
}

resource "tls_private_key" "baz" {}

data "aws_caller_identity" "current" {
  provider = "aws"
}

resource "null_resource" "foo" {}

module "foo" {
  source  = "bar"
  version = "1.2.3"
}

module "bar" {
  source  = "baz"
  version = "1.2.3"

  providers = {
    aws = aws.edge
  }
}

module "baz" {
  source  = "foo"
  version = "1.2.3"

  providers = {
    aws = aws.route53
  }
}