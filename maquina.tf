resource "aws_instance" "maquina-prueba"¨{
    name          = "dev-${var.project_id}-maquina-prueba-${var.regions["region1"]}-1
   (instance) machine_type = "t2.micro"
    zone          = "us-central1-a"
    service       = local.project_id
    project_name  = local.project_name
    startup_scrip = var.startup


    tags  = ["Si las conexion es de manera interna aqui colocamos el nombre de las etiquetas de red "]
    tags2 = ["colocar el nombre de udsuario que se conectara por medio de ssh"]


    boot_disk {
        initialize_params {
            image = "cis-public/cis-ubuntu-linux
            size  =  "20
        }    
    }

    network_interface {
        network     = "proyecto"
        subnetwork  = "colocamos el proyecto que ara referencia a la subnet"

        //Seccion para asignale una ip Publica Externa 
    }

    

}

