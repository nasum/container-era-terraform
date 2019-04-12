resource "aws_instance" "sample" {
  ami                         = "ami-05b296a384694dfa4"
  instance_type               = "t2.small"
  monitoring                  = true
  iam_instance_profile        = "${data.terraform_remote_state.aws_iam.ecs_instance_profile_name}"
  subnet_id                   = "${data.terraform_remote_state.vpc.public_subnet_1_id}"
  user_data                   = "${data.template_file.user_data.rendered}"
  associate_public_ip_address = true

  vpc_security_group_ids = [
    "${aws_security_group.instance.id}",
  ]

  root_block_device {
    volume_size = "20"
    volume_type = "gp2"
  }
}
