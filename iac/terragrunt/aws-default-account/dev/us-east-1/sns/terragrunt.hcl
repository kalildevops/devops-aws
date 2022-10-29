terraform {
  source = "${path_relative_from_include()}/../terraform/modules/sns//."
}

include {
  path = find_in_parent_folders()
}

inputs = {}