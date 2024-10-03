# GCP Datastore Terraform Module

This repository provides a Terraform module to provision a GCP Datastore instance in Cloud Datastore Compatibility mode. The module is designed for optimal query performance and includes features for configuring indexes and running tests using Terratest.

## Table of Contents

- [Overview](#overview)
- [Folder Structure](#folder-structure)
- [Features](#features)
- [Requirements](#requirements)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Module Variables](#module-variables)
- [Outputs](#outputs)
- [Terratest](#terratest)
- [Contributing](#contributing)
- [License](#license)

## Overview

The objective of this module is to create a GCP Datastore instance in Cloud Datastore Compatibility mode. It allows the user to specify key properties such as region, instance name, kind, and indexes for improved query performance. This module follows Terraform best practices and includes tests to ensure correct behavior.

## Folder Structure

├── README.md
├── datastore_module
│   ├── main.tf
│   ├── outputs.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   └── variables.tf
├── main.tf
├── outputs.tf
├── provider.tf
├── terraform.tfstate
├── terraform.tfstate.backup
├── terraform.tfvars
├── test
│   ├── data_store_test.go
│   ├── go.mod
│   └── go.sum
└── variables.tf

#Documentation for the module



## Features

- Provision a Google Cloud Datastore instance in Compatibility mode.
- Support for creating indexed properties for a specified Datastore kind.
- Configurable via input variables for region, instance name, kind, and indexes.
- Handles invalid inputs such as incorrect region names.
- Fully tested using Terratest.
- Provides useful output variables like instance name and region.

## Requirements

The module must meet the following requirements:

1. **Datastore Mode**: The Datastore instance must be created in **Cloud Datastore Compatibility mode**.
2. **Indexes**: Appropriate indexes for the specified kind should be created using **Terraform resources** only (no external scripts or YAML descriptions).
3. **Datastore Instance**: The module must create a Datastore instance with the specified name and region.
4. **Kind**: The module must create a kind with the specified name.
5. **Testing**: The module includes Terratest to demonstrate functionality, including handling of invalid inputs (e.g., incorrect region names).
6. **Documentation**: Inline comments and a comprehensive `README.md` file are required, explaining how to use the module and any necessary configurations.
7. **Output Variables**: Useful output variables should provide information about the created resources (e.g., instance name, region).
8. **Optional Parameters**: Parameters such as the number of indexes or configuration for indexes should allow flexibility.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (v1.0+)
- [Google Cloud SDK](https://cloud.google.com/sdk)
- [Go](https://golang.org/dl/) (v1.16+ for testing)
- [Terratest](https://terratest.gruntwork.io/)
- A Google Cloud project with appropriate permissions to create Datastore resources.

## Usage

### Example Usage

To use the Datastore module, follow the steps below.

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-repo/datastore-module.git
   cd datastore-module

