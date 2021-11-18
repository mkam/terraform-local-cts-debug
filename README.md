## Consul-Terraform-Sync Test Module - Debugging

This Terraform module creates a file with for each entry of the services variable. This is used to test and debug [Consul Terraform Sync](https://www.consul.io/docs/nia).

## Feature

This module uses the `local` Terraform provider to create a file `services_var.txt` where the contents of the file is the value of the services variable.

## Requirements

### Ecosystem Requirements

| Ecosystem | Version |
|-----------|---------|
| [consul](https://www.consul.io/downloads) | >= 1.7 |
| [consul-terraform-sync](https://www.consul.io/docs/nia) | >= 0.1.0 |
| [terraform](https://www.terraform.io) | >= 0.13 |

### Terraform Providers

| Name | Version |
|------|---------|
| local | >= 2.1.0 |

## Setup
There are no setup requirements for automating this module with Consul Terraform Sync.

## Usage

**User Config for Consul Terraform Sync**

example.hcl
```hcl
task {
  name           = "test"
  source         = "mkam/cts-debug/local"
  version        = "0.1.0"
  services       = ["web", "app"]
}
```
