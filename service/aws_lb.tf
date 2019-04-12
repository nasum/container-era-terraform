resource "aws_lb" "lb" {
  name               = "sample-lb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [
    "${aws_security_group.alb.id}",
  ]

  subnets = [
    "${data.terraform_remote_state.vpc.public_subnet_1_id}",
    "${data.terraform_remote_state.vpc.public_subnet_2_id}",
  ]
}
