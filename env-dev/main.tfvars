env = "dev"

vpc = {
  main = {
    cidr  = "10.0.0.0/16"

    public_subnets = {
      name = "public-az1"
      cidr_block = "10.0.0.0/24"
    }

    public_subnets = {
      name = "public-az2"
      cidr_block = "10.0.1.0/24"
    }

    private_subnets = {
      web ={
        name = "private"
        cidr_block = "10.0.2.0/24"
      }
      web ={
        name = "private"
        cidr_block = "10.0.3.0/24"
      }

      app ={
        name = "private"
        cidr_block = "10.0.4.0/24"
      }
      app ={
        name = "private"
        cidr_block = "10.0.5.0/24"
      }

      db ={
        name = "private"
        cidr_block = "10.0.6.0/24"
      }
      db ={
        name = "private"
        cidr_block = "10.0.7.0/24"
      }
    }
  }
}