resource "aws_instance" "maquina-prueba"{
    name          = "dev-${var.project_id}-maquina-prueba-${var.regions["region1"]}-1"
    machine_type  = "t2.micro"
    zone          = "us-central1-a"
    service       = local.project_id
    project_name  = local.project_name
    startup_scrip = var.startup

// en el apartado de tags selecionamos de que manera sera la coneccion a la maquina ya sea por etiquetas de red
// o por algun nombre en especifico 
    
    
    tags  = [""]
    


    boot_disk {
        initialize_params {
            image = "cis-public/cis-ubuntu-linux"
            size  =  "20"
        }    
        }
//colocamos el nombre del proyecto donde va a vivir nuestra naquina y se le pueda asignar una direccion ip 
    network_interface {
        
        network     = "proyecto"
        subnetwork  = "proyecto"

         
    }

    

}

