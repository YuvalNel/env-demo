# Provider configuration
provider "null" {
  version = "~> 3.0"
}

# Define pet names
resource "null_resource" "pet" {
  count = 7  # Change the count to generate more or fewer resources
}

# Define strings
resource "null_resource" "password" {
  count = 1
}

# Define integers
resource "null_resource" "number" {
  count = 1
}

# Output defined values
output "random_pets" {
  value = null_resource.pet[*].id
}

output "random_password" {
  value = "This is a password"  # Define a specific password
}

output "random_number" {
  value = 41  # Define a specific number
}
