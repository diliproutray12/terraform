diliprg = {
  rg1 = {
    name       = "devrg"
    location   = "eastus"
    managed_by = "terraform"

    tags = {
      Environment     = "production"
      Project = "telecom"
      Owner = "dilip kumar"
    }
  }
  rg2 = {
    name       = "prodrg"
    location   = "centralindia"
    managed_by = "terraform"

    tags = {
      Environment     = "production"
      Project = "telecom"
      Owner = "dilip kumar"
    }
  }
}
