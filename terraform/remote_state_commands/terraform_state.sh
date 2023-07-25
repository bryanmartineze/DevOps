#Check the resources created within a terraform configuration file

terraform state list

#show the state of a resource

terraform state show <resource>.<name>

#erase a resource from a configuration file

terraform state rm local_file.hall_of_fame

#rename a resource

terraform state mv random_pet.super_pet_1 random_pet.ultra_pet