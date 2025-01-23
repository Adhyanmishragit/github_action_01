terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "1.4.0"  # or any compatible version
    }
  }
}


provider "databricks" {
  host     = var.databricks_host
  token    = var.databricks_token
}

data "databricks_current_user" "me" {}

resource "databricks_notebook" "code1_notebook" {
  path     = "/Workspace/Users/22053351@kiit.ac.in/Untitled Notebook 2025-01-23 23:54:31/code1"
  language = "PYTHON"
  content_base64 = base64encode(file("code1.py"))  # Path to your code1.py
}

resource "databricks_notebook" "code2_notebook" {
  path     = "/Workspace/Users/22053351@kiit.ac.in/Untitled Notebook 2025-01-23 23:54:31/code2"
  language = "PYTHON"
  content_base64 = base64encode(file("code2.py"))  # Path to your code2.py
}


