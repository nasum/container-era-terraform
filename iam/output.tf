output "ecs_instance_profile_name" {
  value = "${aws_iam_instance_profile.ecs_instance_profile.name}"
}

output "ecs_task_role_arn" {
  value = "${aws_iam_role.ecs_task_role.arn}"
}
