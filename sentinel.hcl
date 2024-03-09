## Used to declare a policy. 
# A file needs to be created with this <policy_name>.sentinel to have the checks
# This file enforces level of the Policy like Hard, Soft-mandatory, Advisory

policy "allowed-terraform-version" {
  enforcement_level = "soft-mandatory"
}