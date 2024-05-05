// Define a variable "country" of type string with a default value of "Poland"
variable "country" {
    type        = string
    default     = "Poland"
    description = "Which country you are living?"
}

// Define a variable "age" of type number
variable "age" {
    type        = number
    description = "What is your age?"
}

// Define a variable "go_santos" of type bool with a default value of false
variable "go_santos" {
    type        = bool
    default     = false
    description = "Do you like Santos?"
}

//outputs <name?
// Define an output "country" that displays the value of the variable "country"
output "country" {
    value       = var.country
    description = "The country you are living"
}

// Define an output "age" that displays the value of the variable "age"
output "age" {
    value       = var.age
    description = "Your age"
}

// Define an output "go_santos" that displays the value of the variable "go_santos"
output "go_santos" {
    value       = var.go_santos
    description = "Do you like Santos?"
}