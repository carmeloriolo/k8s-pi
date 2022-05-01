resource "helm_release" "nginx_ingress" {
  name       = "nginx-ingress-controller"

  repository = "https://helm.nginx.com/stable"
  chart      = "nginx-ingress"
  version    = "0.13.0"
  namespace  = kubernetes_namespace.nginx_ingress.id

  set {
    name  = "controller.service.type"
    value = "NodePort"
  }
}
