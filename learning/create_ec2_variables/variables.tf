# Normal string variable
variable "region" {
    default = "us-west-2"
}

# Map or dictionary of key value pair variables
variable "amis" {
    type = "map" # Explicit Declaration
    default = {  # Implicit Declaration
        "us-east-1" = "ami-b374d5a5"
        "us-west-2" = "ami-fc0b939c"
    }
}