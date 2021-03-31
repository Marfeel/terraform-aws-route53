output "this_route53_record_name" {
  description = "The name of the record"
  value       = { for k, v in aws_route53_record.this : k => v.name }
}

output "this_route53_record_fqdn" {
  description = "FQDN built using the zone domain and name"
  value       = { for k, v in aws_route53_record.this : k => v.fqdn }
}
  
output "this_route53_records" {
  description = "The name of the record"
  value       = { for k, v in aws_route53_record.this : k => v.records }
}
