resource "aws_iam_role" "ecs_instance_role" {
  name               = "ecs_instance_role"
  path               = "/"
  assume_role_policy = "${file("aws_iam_role_policies/ec2_assume_role_policy.json")}"
}

resource "aws_iam_role" "ecs_task_role" {
  name               = "ecs-task-role"
  path               = "/"
  assume_role_policy = "${file("aws_iam_role_policies/ecs_task_assume_role_policy.json")}"
}
