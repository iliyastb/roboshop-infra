env              = "prod"
# this is the worstation private ip, if worstation is newly created then update here
bastion_cidr     = ["172.31.28.143/32"]
# this is the elk private ip, if elk stack is newly created then update here
monitoring_nodes = ["172.31.24.29/32"]
# this is the domain url, update the new domain if changed
dns_domain       = "devtb.in.net"
# kms roboshop
kms_arn = "arn:aws:kms:us-east-1:860050401100:key/66a389eb-5357-4101-b177-5ccbf9bb8856"
# region
region = "us-east-1"

vpc = {
  main = {
    vpc_cidr = "10.225.0.0/16"

    public_subnets = {
      public-az1 = {
        name              = "public-az1"
        cidr_block        = "10.225.0.0/24"
        availability_zone = "us-east-1a"
      }
      public-az2 = {
        name              = "public-az2"
        cidr_block        = "10.225.1.0/24"
        availability_zone = "us-east-1b"
      }
    }

    private_subnets = {
      web-az1 = {
        name              = "web-az1"
        cidr_block        = "10.225.2.0/24"
        availability_zone = "us-east-1a"
        zone              = "az1"
      }
      web-az2 = {
        name              = "web-az2"
        cidr_block        = "10.225.3.0/24"
        availability_zone = "us-east-1b"
        zone              = "az2"
      }
      app-az1 = {
        name              = "app-az1"
        cidr_block        = "10.225.4.0/24"
        availability_zone = "us-east-1a"
        zone              = "az1"
      }
      app-az2 = {
        name              = "app-az2"
        cidr_block        = "10.225.5.0/24"
        availability_zone = "us-east-1b"
        zone              = "az2"
      }
      db-az1 = {
        name              = "db-az1"
        cidr_block        = "10.225.6.0/24"
        availability_zone = "us-east-1a"
        zone              = "az1"
      }
      db-az2 = {
        name              = "db-az2"
        cidr_block        = "10.225.7.0/24"
        availability_zone = "us-east-1b"
        zone              = "az2"
      }
    }
  }
}

docdb = {
  main = {
    engine                  = "docdb"
    engine_version          = "4.0.0"
    backup_retention_period = 2
    preferred_backup_window = "07:00-09:00"
    skip_final_snapshot     = true
    no_of_instances         = 1
    instance_class          = "db.t3.medium"
    allow_subnets           = "app"
  }
}

rds = {
  main = {
    engine                  = "aurora-mysql"
    engine_version          = "5.7.mysql_aurora.2.11.1"
    backup_retention_period = 5
    preferred_backup_window = "07:00-09:00"
    no_of_instances         = 1
    instance_class          = "db.t3.small"
    allow_subnets           = "app"
  }
}

elasticache = {
  main = {
    engine          = "redis"
    engine_version  = "6.x"
    num_cache_nodes = 1
    node_type       = "cache.t3.micro"
    allow_subnets   = "app"
  }
}

rabbitmq = {
  main = {
    instance_type = "t3.small"
    allow_subnets = "app"
  }
}

alb = {
  public = {
    subnet_name        = "public"
    name               = "public"
    internal           = false
    load_balancer_type = "application"
    allow_cidr         = ["0.0.0.0/0"]
  }

  private = {
    subnet_name        = "app"
    name               = "private"
    internal           = true
    load_balancer_type = "application"
    allow_cidr         = ["10.225.2.0/24", "10.225.3.0/24", "10.225.4.0/24", "10.225.5.0/24"]
  }
}

apps = {
  frontend = {
    component         = "frontend"
    instance_type     = "t3.small"
    desired_capacity  = 2
    max_size          = 10
    min_size          = 2
    subnet_name       = "web"
    port              = 80
    allow_app_to      = "public"
    alb               = "public"
    listener_priority = 10
    parameters        = []
  }
  catalogue = {
    component         = "catalogue"
    instance_type     = "t3.small"
    desired_capacity  = 2
    max_size          = 10
    min_size          = 2
    subnet_name       = "app"
    port              = 8080
    allow_app_to      = "app"
    alb               = "private"
    listener_priority = 11
    parameters        = ["docdb"]
  }
  user = {
    component         = "user"
    instance_type     = "t3.small"
    desired_capacity  = 2
    max_size          = 10
    min_size          = 2
    subnet_name       = "app"
    port              = 8080
    allow_app_to      = "app"
    alb               = "private"
    listener_priority = 12
    parameters        = ["docdb", "elasticache"]
  }
  cart = {
    component         = "cart"
    instance_type     = "t3.small"
    desired_capacity  = 2
    max_size          = 10
    min_size          = 2
    subnet_name       = "app"
    port              = 8080
    allow_app_to      = "app"
    alb               = "private"
    listener_priority = 13
    parameters        = ["elasticache"]
  }
  shipping = {
    component         = "shipping"
    instance_type     = "t3.medium"
    desired_capacity  = 3
    max_size          = 10
    min_size          = 3
    subnet_name       = "app"
    port              = 8080
    allow_app_to      = "app"
    alb               = "private"
    listener_priority = 14
    parameters        = ["rds"]
  }
  payment = {
    component         = "payment"
    instance_type     = "t3.small"
    desired_capacity  = 2
    max_size          = 10
    min_size          = 2
    subnet_name       = "app"
    port              = 8080
    allow_app_to      = "app"
    alb               = "private"
    listener_priority = 15
    parameters        = ["rabbitmq"]
  }
}