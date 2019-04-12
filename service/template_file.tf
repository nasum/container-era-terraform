data "template_file" "user_data" {
  template = "${file("./user_data.tpl")}"
}

data "template_file" "service_container_definition" {
  template = "${file("./container_definitions/service.json.tpl")}"
}

data "template_file" "migrate_container_definition" {
  template = "${file("./container_definitions/migrate.json.tpl")}"
}
