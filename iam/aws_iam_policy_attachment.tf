resource "aws_iam_role_policy_attachment" "ecs_instance_role_attach" {
  role = "${aws_iam_role.ecs_instance_role.name}"

  policy_arn = "${aws_iam_policy.ecs_instance_policy.arn}"
}
