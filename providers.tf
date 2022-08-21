provider "aws" {
    //credentials = "${file("CREDENTIAL_FILE.JSON")}"
}

provider "aws-beta"{
    //credemtials = "${file("CREDENTIAL_FILE.JSON")}"
}

terraform {
    required_version = "->1.2.1"
    backend "aws" {
        bucken = "proyecto-state-terraform-maquina"
        prefix = "creacion-de-maquina"
        //      credentials = "service-account.json"
    }
}
