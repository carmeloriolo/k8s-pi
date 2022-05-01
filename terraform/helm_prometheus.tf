resource "helm_release" "prometheus" {
  name       = "prometheus"

  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus-pushgateway"
  namespace  = kubernetes_namespace.observability.id
}
