# 例1: HTTP (80) と HTTPS (443) を許可するルール
resource "google_compute_firewall" "allow_web" {
  name    = "allow-web-inbound"
  network = var.network_name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web-server"] # このタグがついたVMインスタンスにのみ適用される
  description   = "Allow HTTP and HTTPS traffic from anywhere"
}

# 例2: 特定のタグを持つVMに対してSSH(22)を許可するルール
resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh-inbound"
  network = var.network_name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh-enabled"]
  description   = "Allow SSH access"
}