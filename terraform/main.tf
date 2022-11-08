# Applying the namespace
resource "kubectl_manifest" "namespace" {
  yaml_body = file("../kubernetes/namespace.yaml")
}

# Applying the app
resource "kubectl_manifest" "app" {
  yaml_body = file("../kubernetes/app.yaml")
  depends_on = [
    kubectl_manifest.namespace
  ]
}

# Applying the service
resource "kubectl_manifest" "service" {
  yaml_body = file("../kubernetes/service.yaml")
  depends_on = [
    kubectl_manifest.app
  ]
}