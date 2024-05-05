// Define a variable named "files" with a default value
variable "files" {
  default = {
    // The first key-value pair in the map
    arquivo_1 = "Primeiro arquivo",
    // The second key-value pair in the map, using heredoc syntax for multi-line strings
    arquivo_2 = <<EOF
Esse é o conteudo do
segundo arquivo
EOF
  }
}

// Define a resource of type "local_file" named "count_map"
resource "local_file" "count_map" {
  // Set the count to the number of keys in the "files" variable
  count = length(keys(var.files))

  // Set the filename to the key at the current index
  filename = keys(var.files)[count.index]
  // Set the content to the value at the current index
  content = var.files[keys(var.files)[count.index]]
}