variable "zones" {
  type = "list"
  default = ["us-east-1a", "us-east-1b"]
}
output "Workvalues" {
  value = "${var.zones}"
}