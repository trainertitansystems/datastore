package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestDatastoreModule(t *testing.T) {
	// Configure the Terraform options with default variables
	terraformOptions := &terraform.Options{
		// Path to the Terraform code you want to test
		TerraformDir: "../datastore_module",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"project_id":              "master-402108",
			"datastore_region":        "asia-south1",
			"datastore_instance_name": "testcabs79",
			"kind_name":               "test_cabs_db",
			"index_properties": []map[string]interface{}{
				{
					"name":      "property1",
					"direction": "asc",
				},
				{
					"name":      "property2",
					"direction": "desc",
				},
			},
		},
	}

	// Clean up resources with "terraform destroy" at the end of the test
	defer terraform.Destroy(t, terraformOptions)

	// This will run "terraform init" and "terraform apply"
	terraform.InitAndApply(t, terraformOptions)

	// Validate your code works as expected
	expectedName := "testcabs79"
	actualName := terraform.Output(t, terraformOptions, "datastore_instance_name")

	assert.Equal(t, expectedName, actualName)

}

