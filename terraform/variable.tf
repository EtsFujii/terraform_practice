variable "project_id" {
  description = "GCPのプロジェクトID"
  type        = string
}

variable "region" {
  description = "デフォルトリージョン"
  type        = string
  default     = "asia-northeast1"
}

variable "network_name" {
  description = "ファイアウォールルールを適用するVPCネットワーク名"
  type        = string
  default     = "default"
}