// Colocaremos los comandos necesarios para poder conectarnos mediante el comando de exportacion de credenciales 


authorized_network = "proyecto"
connect_mode       = "PRIVATE_SERVICE_ACCESS"

output "token" {
    value        = data.aws_client_config_default.access_token
    sensitive    = true
}
