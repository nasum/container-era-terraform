resource "aws_ecs_task_definition" "sample-task" {
  family                = "rails-service"
  container_definitions = "${data.template_file.service_container_definition.rendered}"

  task_role_arn = "${data.terraform_remote_state.aws_iam.ecs_task_role_arn}"
  network_mode  = "bridge"
}

resource "aws_ecs_task_definition" "rails-migrate" {
  family                = "rails-migrate"
  container_definitions = "${data.template_file.migrate_container_definition.rendered}"

  task_role_arn = "${data.terraform_remote_state.aws_iam.ecs_task_role_arn}"
  network_mode  = "bridge"
}
