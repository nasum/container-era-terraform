[
  {
    "name": "sample-rails",
    "image": "ECRのURL/sample-image:latest",
    "cpu": 333,
    "memory": null,
    "memoryReservation": 600,
    "essential": true,
    "portMappings": [
      {
        "hostPort": 0,
        "protocol": "tcp",
        "containerPort": 3000
      }
    ],
    "command": ["bundle", "exec", "pumactl", "start"],
    "environment": [
      {
        "name": "RAILS_ENV",
        "value": "production"
      },
      {
        "name": "RACK_ENV",
        "value": "production"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "sample-service",
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "service"
      }
    }
  }
]
