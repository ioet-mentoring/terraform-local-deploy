provider "kubernetes" {
  config_path = "~/.kube/config"
}


module "k8s" {
  source    = "../modules/k8s"
  app_label = "nest-dev"
  app_ns    = "nest-dev"
  app_image = "jeffqev/acme-backend:latest"
}
