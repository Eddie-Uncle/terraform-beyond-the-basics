// Declare a variable named "arquivos"
variable "arquivos" {
  // Set a default value for the variable. It's a map with two key-value pairs.
  default = {
    // The first key-value pair. The key is "arquivo_1" and the value is "Primeiro arquivo"
    arquivo_1 = "Primeiro arquivo",
    // The second key-value pair. The key is "arquivo_2" and the value is a multi-line string.
    arquivo_2 = <<EOF
Esse é o conteudo do
segundo arquivo
EOF
  }
}

// Define a resource of type "local_file" named "for_each"
resource "local_file" "for_each" {
  // Use the "for_each" meta-argument to create one instance of this resource for each element in the "arquivos" variable
  for_each = var.arquivos

  // Set the filename for each file to the key of the current element in the "arquivos" map
  filename = each.key
  // Set the content for each file to the value of the current element in the "arquivos" map
  content = each.value
}