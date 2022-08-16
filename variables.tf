variable "project_name"{
    description = "the Name of the project"
    default     = "nombre del proyecto"
}

variable "project_id"{
    description = "the ID of the project"
    default     = "nombre del proyecto"
}

variable "regions"{
    type  = map(any)
    default     = {region1 = "us-central1"}
}

variable "startup"{
    description = "startup extra"
    default     = "sudo apt-get install -y docker-ce docker-ce-cli containerd.io "
}
