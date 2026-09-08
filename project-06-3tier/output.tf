output "alb_dns_name" {
  value       = aws_lb.app_alb.dns_name
  description = "Copy this URL to see your website"
}