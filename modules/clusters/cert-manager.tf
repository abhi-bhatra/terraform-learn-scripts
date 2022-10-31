# resource "helm_release" "cert_manager" {
#   keyring = ""
#   name = "cert-manager"
#   chart = "stable/cert-manager"
#   namespace = "kube-system"
#   set {
#     name  = "webhook.enabled"
#     value = "false"
#   }

#   provisioner "local-exec" {
#     command = "kubectl --server=${aws_eks_cluster.this.endpoint} --insecure-skip-tls-verify=true apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.6/deploy/manifests/00-crds.yaml"
#   }

#   provisioner "local-exec" {
#     command = "kubectl --server=${aws_eks_cluster.this.endpoint} --insecure-skip-tls-verify=true label namespace kube-system certmanager.k8s.io/disable-validation=\"true\" --overwrite"
#   }

#   provisioner "local-exec" {
#     command = <<EOT
# cat <<EOF | kubectl --server=${aws_eks_cluster.this.endpoint} --insecure-skip-tls-verify=true create -f -
# apiVersion: certmanager.k8s.io/v1alpha1
# kind: ClusterIssuer
# metadata:
#   name: letsencrypt
# spec:
#   acme:
#     server: https://acme-v02.api.letsencrypt.org/directory
#     email: abhinav.sharma@zeeve.io
#     privateKeySecretRef:
#       name: letsencrypt
#     http01: {}
# EOF
# EOT
#   }
# }
