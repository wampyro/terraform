//crear buckent para guardar estado de maquina
resource "aws_storage_buckent" "proyecto_roles-cf-bucket" {
    project       =  "proyecto"
    name          =  "proyecto-state-terraform-maquina"
    force_destroy =  false 
    location      =  "US"
    versioning {
        enabled = true 
    }
 }