# https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs
provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "docker-desktop"
}

# https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs
provider "kubectl" {
  config_path    = "~/.kube/config"
  config_context = "docker-desktop"
}