output "alb_dns" {
  description = "DNS name for the application load balancer."
  value       = module.alb.alb_dns_name
}
