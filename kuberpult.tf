resource "helm_release" "kuberpult" {
  name  = "kuberpult"
  chart = "https://github.com/freiheit-com/kuberpult/releases/download/0.4.44/kuberpult-0.4.44.tgz"

  version = "0.4.44"

  cleanup_on_fail = true

  set {
    name  = "git.url"
    value = "https://github.com/mouhsen-ibrahim/test-manifests.git"
  }

  set {
    name  = "git.branch"
    value = "main"
  }

  set {
    name  = "ingress.domainName"
    value = "kuberpult.test.com"
  }

  set {
    name  = "ingress.iap.enabled"
    value = "false"
  }

}
