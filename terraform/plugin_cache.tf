provider "terraform" {version = "~> 1.0.2"}
provider "openstack" {version = "~> 1.1.0"}
provider "cloudflare" {version = "~> 0.1.0"}
provider "local" { version = "~> 1.0.0"}
provider "powerdns" {version = "~> 0.1.0"}
provider "kubernetes" {version = "~> 1.0.1"}

# Orange provider
provider "credhub" {version = "~> 0.10.0"}
provider "cloudfoundry" {version = "~> 0.9.1"}
