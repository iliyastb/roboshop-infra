alb = {
  "Private" = {
    "alb" = {
      "access_logs" = tolist([
        {
          "bucket" = ""
          "enabled" = false
          "prefix" = ""
        },
      ])
      "arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/private-dev/d2d056736ad9f0ac"
      "arn_suffix" = "app/private-dev/d2d056736ad9f0ac"
      "connection_logs" = tolist([
        {
          "bucket" = ""
          "enabled" = false
          "prefix" = ""
        },
      ])
      "customer_owned_ipv4_pool" = ""
      "desync_mitigation_mode" = "defensive"
      "dns_name" = "internal-private-dev-358145460.us-east-1.elb.amazonaws.com"
      "dns_record_client_routing_policy" = tostring(null)
      "drop_invalid_header_fields" = false
      "enable_cross_zone_load_balancing" = true
      "enable_deletion_protection" = false
      "enable_http2" = true
      "enable_tls_version_and_cipher_suite_headers" = false
      "enable_waf_fail_open" = false
      "enable_xff_client_port" = false
      "enforce_security_group_inbound_rules_on_private_link_traffic" = ""
      "id" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/private-dev/d2d056736ad9f0ac"
      "idle_timeout" = 60
      "internal" = true
      "ip_address_type" = "ipv4"
      "load_balancer_type" = "application"
      "name" = "private-dev"
      "name_prefix" = ""
      "preserve_host_header" = false
      "security_groups" = toset([
        "sg-0e6f5a76a9c6355f6",
      ])
      "subnet_mapping" = toset([
        {
          "allocation_id" = ""
          "ipv6_address" = ""
          "outpost_id" = ""
          "private_ipv4_address" = ""
          "subnet_id" = "subnet-02dcbfdb62df9c670"
        },
        {
          "allocation_id" = ""
          "ipv6_address" = ""
          "outpost_id" = ""
          "private_ipv4_address" = ""
          "subnet_id" = "subnet-0fa5fce6ae619a6b6"
        },
      ])
      "subnets" = toset([
        "subnet-02dcbfdb62df9c670",
        "subnet-0fa5fce6ae619a6b6",
      ])
      "tags" = tomap({
        "Name" = "private-dev"
        "app_name" = "roboshop"
        "bu_name" = "ecommerce"
        "owner" = "ecom"
      })
      "tags_all" = tomap({
        "Name" = "private-dev"
        "app_name" = "roboshop"
        "bu_name" = "ecommerce"
        "owner" = "ecom"
      })
      "timeouts" = null /* object */
      "vpc_id" = "vpc-0cdf67ce4e1b2eab1"
      "xff_header_processing_mode" = "append"
      "zone_id" = "Z35SXDOTRQ7X7K"
    }
    "listener" = {
      "alpn_policy" = tostring(null)
      "arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:listener/app/private-dev/d2d056736ad9f0ac/185d0da8396bf9b3"
      "certificate_arn" = tostring(null)
      "default_action" = tolist([
        {
          "authenticate_cognito" = tolist([])
          "authenticate_oidc" = tolist([])
          "fixed_response" = tolist([
            {
              "content_type" = "text/html"
              "message_body" = "503 - Invalid"
              "status_code" = "503"
            },
          ])
          "forward" = tolist([])
          "order" = 1
          "redirect" = tolist([])
          "target_group_arn" = ""
          "type" = "fixed-response"
        },
      ])
      "id" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:listener/app/private-dev/d2d056736ad9f0ac/185d0da8396bf9b3"
      "load_balancer_arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/private-dev/d2d056736ad9f0ac"
      "mutual_authentication" = tolist([])
      "port" = 80
      "protocol" = "HTTP"
      "ssl_policy" = ""
      "tags" = tomap({})
      "tags_all" = tomap({})
      "timeouts" = null /* object */
    }
  }
  "public" = {
    "alb" = {
      "access_logs" = tolist([
        {
          "bucket" = ""
          "enabled" = false
          "prefix" = ""
        },
      ])
      "arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/public-dev/6832f8c4d14b0b9a"
      "arn_suffix" = "app/public-dev/6832f8c4d14b0b9a"
      "connection_logs" = tolist([
        {
          "bucket" = ""
          "enabled" = false
          "prefix" = ""
        },
      ])
      "customer_owned_ipv4_pool" = ""
      "desync_mitigation_mode" = "defensive"
      "dns_name" = "public-dev-339993208.us-east-1.elb.amazonaws.com"
      "dns_record_client_routing_policy" = tostring(null)
      "drop_invalid_header_fields" = false
      "enable_cross_zone_load_balancing" = true
      "enable_deletion_protection" = false
      "enable_http2" = true
      "enable_tls_version_and_cipher_suite_headers" = false
      "enable_waf_fail_open" = false
      "enable_xff_client_port" = false
      "enforce_security_group_inbound_rules_on_private_link_traffic" = ""
      "id" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/public-dev/6832f8c4d14b0b9a"
      "idle_timeout" = 60
      "internal" = false
      "ip_address_type" = "ipv4"
      "load_balancer_type" = "application"
      "name" = "public-dev"
      "name_prefix" = ""
      "preserve_host_header" = false
      "security_groups" = toset([
        "sg-0da6745ef8c403ed3",
      ])
      "subnet_mapping" = toset([
        {
          "allocation_id" = ""
          "ipv6_address" = ""
          "outpost_id" = ""
          "private_ipv4_address" = ""
          "subnet_id" = "subnet-053a31560a270db7f"
        },
        {
          "allocation_id" = ""
          "ipv6_address" = ""
          "outpost_id" = ""
          "private_ipv4_address" = ""
          "subnet_id" = "subnet-077d94dea997f7d3b"
        },
      ])
      "subnets" = toset([
        "subnet-053a31560a270db7f",
        "subnet-077d94dea997f7d3b",
      ])
      "tags" = tomap({
        "Name" = "public-dev"
        "app_name" = "roboshop"
        "bu_name" = "ecommerce"
        "owner" = "ecom"
      })
      "tags_all" = tomap({
        "Name" = "public-dev"
        "app_name" = "roboshop"
        "bu_name" = "ecommerce"
        "owner" = "ecom"
      })
      "timeouts" = null /* object */
      "vpc_id" = "vpc-0cdf67ce4e1b2eab1"
      "xff_header_processing_mode" = "append"
      "zone_id" = "Z35SXDOTRQ7X7K"
    }
    "listener" = {
      "alpn_policy" = tostring(null)
      "arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:listener/app/public-dev/6832f8c4d14b0b9a/be9ba9078d562d78"
      "certificate_arn" = tostring(null)
      "default_action" = tolist([
        {
          "authenticate_cognito" = tolist([])
          "authenticate_oidc" = tolist([])
          "fixed_response" = tolist([
            {
              "content_type" = "text/html"
              "message_body" = "503 - Invalid"
              "status_code" = "503"
            },
          ])
          "forward" = tolist([])
          "order" = 1
          "redirect" = tolist([])
          "target_group_arn" = ""
          "type" = "fixed-response"
        },
      ])
      "id" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:listener/app/public-dev/6832f8c4d14b0b9a/be9ba9078d562d78"
      "load_balancer_arn" = "arn:aws:elasticloadbalancing:us-east-1:860050401100:loadbalancer/app/public-dev/6832f8c4d14b0b9a"
      "mutual_authentication" = tolist([])
      "port" = 80
      "protocol" = "HTTP"
      "ssl_policy" = ""
      "tags" = tomap({})
      "tags_all" = tomap({})
      "timeouts" = null /* object */
    }
  }
}