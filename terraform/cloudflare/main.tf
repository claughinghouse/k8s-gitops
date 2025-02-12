terraform {
  cloud {
    organization = "buroa"
    hostname     = "app.terraform.io"
    workspaces {
      name = "terraform-cloudflare"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.0.0"
    }
    onepassword = {
      source  = "1password/onepassword"
      version = "2.1.2"
    }
  }
}

module "onepassword_item_cloudflare" {
  source = "github.com/bjw-s/terraform-1password-item?ref=main"
  vault  = "K8s"
  item   = "cloudflare"
}
