resource "aws_ecs_service" "rails-service" {
  name            = "rails-service"
  cluster         = "${aws_ecs_cluster.sample-ecs-cluster.id}"
  task_definition = "${aws_ecs_task_definition.sample-task.arn}"
  desired_count   = 1
  launch_type     = "EC2"

  load_balancer {
    target_group_arn = "${aws_lb_target_group.http.arn}"
    container_name   = "sample-rails"
    container_port   = "3000"
  }
}
