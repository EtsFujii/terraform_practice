terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
#  # リモートバックエンド（GCS）の設定を追加
#  backend "gcs" {
#    bucket = "gcp-practice-504123-tfstate"
#    prefix = "terraform/state"
#  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}