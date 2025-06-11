terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
    }
  }
}

resource "helm_release" "argocd" {
  name = "argocd"
  namespace = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart = "argo-cd"
  timeout = 600
  values = [
    file("${path.module}/values.yaml")
  ]
  create_namespace = true

  depends_on = [var.aks_dependency]
}

# resource "kubectl_manifest" "git_secret" {
#   yaml_body = file("${path.module}/git-ssh-secret.yaml")
#   depends_on = [ helm_release.argocd ]
# }

resource "kubectl_manifest" "root_application" {
  yaml_body = file("${path.module}/root-application.yaml")
  depends_on = [ helm_release.argocd ]
}