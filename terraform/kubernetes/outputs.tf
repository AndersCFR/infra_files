output "k8_host" {
  value = digitalocean_kubernetes_cluster.devsu.endpoint
}

resource "local_file" "kubernetes_config" {
  content = "${digitalocean_kubernetes_cluster.devsu.kube_config.0.raw_config}"
  filename = "./k8_config.yml"
}

