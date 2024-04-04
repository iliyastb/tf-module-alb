variable "env" {}
variable "tags" {}
variable "name" {}
variable "internal" {}
variable "load_balancer_type" {}
variable "enable_deletion_protection" {
  default = false
}
variable "subnets" {}
variable "vpc_id" {}
variable "allow_cidr" {}

#alb = {
#  "Private" = {
#    "alb" = {
#      "access_logs" = tolist([
#        {
#          "bucket" = ""
#          "enabled" = false
#          "prefix" = ""
#        },
#      ])
#      "arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/private-dev/abbb56d97a82a98b"
#      "arn_suffix" = "app/private-dev/abbb56d97a82a98b"
#      "connection_logs" = tolist([
#        {
#          "bucket" = ""
#          "enabled" = false
#          "prefix" = ""
#        },
#      ])
#      "customer_owned_ipv4_pool" = ""
#      "desync_mitigation_mode" = "defensive"
#      "dns_name" = "internal-private-dev-410069471.us-east-1.elb.amazonaws.com"
#      "dns_record_client_routing_policy" = tostring(null)
#      "drop_invalid_header_fields" = false
#      "enable_cross_zone_load_balancing" = true
#      "enable_deletion_protection" = false
#      "enable_http2" = true
#      "enable_tls_version_and_cipher_suite_headers" = false
#      "enable_waf_fail_open" = false
#      "enable_xff_client_port" = false
#      "enforce_security_group_inbound_rules_on_private_link_traffic" = ""
#      "id" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/private-dev/abbb56d97a82a98b"
#      "idle_timeout" = 60
#      "internal" = true
#      "ip_address_type" = "ipv4"
#      "load_balancer_type" = "application"
#      "name" = "private-dev"
#      "name_prefix" = ""
#      "preserve_host_header" = false
#      "security_groups" = toset([
#        "sg-0b544c7482d84d7a8",
#      ])
#      "subnet_mapping" = toset([
#        {
#          "allocation_id" = ""
#          "ipv6_address" = ""
#          "outpost_id" = ""
#          "private_ipv4_address" = ""
#          "subnet_id" = "subnet-027efb46846f68d4c"
#        },
#        {
#          "allocation_id" = ""
#          "ipv6_address" = ""
#          "outpost_id" = ""
#          "private_ipv4_address" = ""
#          "subnet_id" = "subnet-03558f50f66a26f19"
#        },
#      ])
#      "subnets" = toset([
#        "subnet-027efb46846f68d4c",
#        "subnet-03558f50f66a26f19",
#      ])
#      "tags" = tomap({
#        "Name" = "private-dev"
#        "app_name" = "roboshop"
#        "bu_name" = "ecommerce"
#        "owner" = "ecom"
#      })
#      "tags_all" = tomap({
#        "Name" = "private-dev"
#        "app_name" = "roboshop"
#        "bu_name" = "ecommerce"
#        "owner" = "ecom"
#      })
#      "timeouts" = null /* object */
#      "vpc_id" = "vpc-03a1542b41fe086da"
#      "xff_header_processing_mode" = "append"
#      "zone_id" = "Z35SXDOTRQ7X7K"
#    }
#    "listener" = {
#      "alpn_policy" = tostring(null)
#      "arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:listener/app/private-dev/abbb56d97a82a98b/a8ebcd56d4c342c4"
#      "certificate_arn" = tostring(null)
#      "default_action" = tolist([
#        {
#          "authenticate_cognito" = tolist([])
#          "authenticate_oidc" = tolist([])
#          "fixed_response" = tolist([
#            {
#              "content_type" = "text/html"
#              "message_body" = "<h1>503 - Invalid Request</h1>"
#              "status_code" = "503"
#            },
#          ])
#          "forward" = tolist([])
#          "order" = 1
#          "redirect" = tolist([])
#          "target_group_arn" = ""
#          "type" = "fixed-response"
#        },
#      ])
#      "id" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:listener/app/private-dev/abbb56d97a82a98b/a8ebcd56d4c342c4"
#      "load_balancer_arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/private-dev/abbb56d97a82a98b"
#      "mutual_authentication" = tolist([])
#      "port" = 80
#      "protocol" = "HTTP"
#      "ssl_policy" = ""
#      "tags" = tomap({})
#      "tags_all" = tomap({})
#      "timeouts" = null /* object */
#    }
#  }
#  "public" = {
#    "alb" = {
#      "access_logs" = tolist([
#        {
#          "bucket" = ""
#          "enabled" = false
#          "prefix" = ""
#        },
#      ])
#      "arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/public-dev/2bd3b41ccf0cd6f9"
#      "arn_suffix" = "app/public-dev/2bd3b41ccf0cd6f9"
#      "connection_logs" = tolist([
#        {
#          "bucket" = ""
#          "enabled" = false
#          "prefix" = ""
#        },
#      ])
#      "customer_owned_ipv4_pool" = ""
#      "desync_mitigation_mode" = "defensive"
#      "dns_name" = "public-dev-932378379.us-east-1.elb.amazonaws.com"
#      "dns_record_client_routing_policy" = tostring(null)
#      "drop_invalid_header_fields" = false
#      "enable_cross_zone_load_balancing" = true
#      "enable_deletion_protection" = false
#      "enable_http2" = true
#      "enable_tls_version_and_cipher_suite_headers" = false
#      "enable_waf_fail_open" = false
#      "enable_xff_client_port" = false
#      "enforce_security_group_inbound_rules_on_private_link_traffic" = ""
#      "id" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/public-dev/2bd3b41ccf0cd6f9"
#      "idle_timeout" = 60
#      "internal" = false
#      "ip_address_type" = "ipv4"
#      "load_balancer_type" = "application"
#      "name" = "public-dev"
#      "name_prefix" = ""
#      "preserve_host_header" = false
#      "security_groups" = toset([
#        "sg-0959cf06f9d941d7f",
#      ])
#      "subnet_mapping" = toset([
#        {
#          "allocation_id" = ""
#          "ipv6_address" = ""
#          "outpost_id" = ""
#          "private_ipv4_address" = ""
#          "subnet_id" = "subnet-08b7a4d1bf4d3504c"
#        },
#        {
#          "allocation_id" = ""
#          "ipv6_address" = ""
#          "outpost_id" = ""
#          "private_ipv4_address" = ""
#          "subnet_id" = "subnet-09009fb4221ee4281"
#        },
#      ])
#      "subnets" = toset([
#        "subnet-08b7a4d1bf4d3504c",
#        "subnet-09009fb4221ee4281",
#      ])
#      "tags" = tomap({
#        "Name" = "public-dev"
#        "app_name" = "roboshop"
#        "bu_name" = "ecommerce"
#        "owner" = "ecom"
#      })
#      "tags_all" = tomap({
#        "Name" = "public-dev"
#        "app_name" = "roboshop"
#        "bu_name" = "ecommerce"
#        "owner" = "ecom"
#      })
#      "timeouts" = null /* object */
#      "vpc_id" = "vpc-03a1542b41fe086da"
#      "xff_header_processing_mode" = "append"
#      "zone_id" = "Z35SXDOTRQ7X7K"
#    }
#    "listener" = {
#      "alpn_policy" = tostring(null)
#      "arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:listener/app/public-dev/2bd3b41ccf0cd6f9/4129f8da0c37732b"
#      "certificate_arn" = tostring(null)
#      "default_action" = tolist([
#        {
#          "authenticate_cognito" = tolist([])
#          "authenticate_oidc" = tolist([])
#          "fixed_response" = tolist([
#            {
#              "content_type" = "text/html"
#              "message_body" = "<h1>503 - Invalid Request</h1>"
#              "status_code" = "503"
#            },
#          ])
#          "forward" = tolist([])
#          "order" = 1
#          "redirect" = tolist([])
#          "target_group_arn" = ""
#          "type" = "fixed-response"
#        },
#      ])
#      "id" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:listener/app/public-dev/2bd3b41ccf0cd6f9/4129f8da0c37732b"
#      "load_balancer_arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/public-dev/2bd3b41ccf0cd6f9"
#      "mutual_authentication" = tolist([])
#      "port" = 80
#      "protocol" = "HTTP"
#      "ssl_policy" = ""
#      "tags" = tomap({})
#      "tags_all" = tomap({})
#      "timeouts" = null /* object */
#    }
#  }
#}