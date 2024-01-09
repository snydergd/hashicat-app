terraform {
  cloud {
    organization = "snydergd-tfc-azure"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
