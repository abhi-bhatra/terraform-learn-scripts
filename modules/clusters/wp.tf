# resource "kubernetes_namespace" "example" {
#   metadata {
#     name = "my-first-namespace"
#   }
# }

# resource "kubernetes_deployment" "wp" {
#   metadata {
#     name = "wp"
#     labels = {
#       test = "myword"
#     }
#   }
#   spec {
#     replicas = 1
#     selector {
#       match_labels = {
#         test = "myword"
#       }
#     }
#     template {
#       metadata {
#         labels = {
#           test = "myword"
#         }
#       }
#       spec {
#         container {
#           image = "wordpress"
#           name  = "wp"
#         }
#       }
#     }
#   }
# }


# resource "kubernetes_service" "wordlb" {
#   metadata {
#     name = "wordlb"
#   }
#   spec {
#     selector = {
#       test = "${kubernetes_deployment.wp.metadata.0.labels.test}"
#     }
#     port {
#       port        = 8080
#       target_port = 8080
#     }
#     type = "NodePort"
#   }
# }

# resource "null_resource" "url" {
#   provisioner "local-exec" {
#     command = "minikube service list"
#   }
#   depends_on = [kubernetes_service.wordlb]
# }


# resource "kubernetes_deployment" "WpApp" {
#   metadata {
#     name = "mypod1"
#   }
#   spec {
#     replicas = 1
#     selector {
#       match_labels = {
#         App = "wordpress"
#       }
#     }
#     template {
#       metadata {
#         labels = {
#           App = "wordpress"
#         }
#       }
#       spec {
#         container {
#           image = "wordpress:4.8-apache"
#           name  = "wppod"
#         }
#       }
#     }
#   }

# }


# resource "kubernetes_service" "example" {
#   metadata {
#     name = "myservice1"
#   }
#   spec {
#     selector = {
#       App = "wordpress"
#     }
#     port {
#       port        = 8080
#       target_port = 8080
#     }
#    type = "NodePort"
#   }
# }
