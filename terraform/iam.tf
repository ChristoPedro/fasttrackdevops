resource "oci_identity_compartment" "devops_compartment" {
    #Required
    compartment_id = var.compartment_id
    description = "Compartimento para o deploy de ferramentas de DevOps"
    name = local.compartment_name
}

resource "oci_identity_dynamic_group" "devops_dynamic_group" {
    #Required
    compartment_id = var.tenancy_ocid
    description = "Devops DG"
    matching_rule = "All {instance.compartment.id = '${local.compartment_ocid}'}"
    name = local.dg_name
}

locals {

    compartment_name = "DevOps"
    compartment_ocid = oci_identity_compartment.devops_compartment.id
    dg_name = "DevOpsDG"

    oci_grafana_logs_statements = [
        "Allow dynamic-group ${local.dg_name} to mange all-resources in compartment ${local.compartment_name}",
        "ALLOW any-user to use functions-family in compartment ${local.compartment_name} where ALL {request.principal.type= 'ApiGateway', request.resource.compartment.id = '${local.compartment_ocid}'}"
    ]

}