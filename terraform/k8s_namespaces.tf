resource "kubernetes_namespace" "nginx_ingress" {
  metadata {
    name = "nginx-ingress"
  }
  provider = "kubernetes"
}

resource "kubernetes_namespace" "observability" {
  metadata {
    name = "observability"
  }
  provider = "kubernetes"
}
