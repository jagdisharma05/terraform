resource "aws_ecs_task_definition" "medusa_task" {
  family                   = "medusa-task"
  container_definitions    = <<DEFINITION
[
  {
    "name": "medusa",
    "image": "${aws_ecr_repository.medusa_repo.repository_url}:latest",
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ],
    "memory": 512,
    "cpu": 256,
    "networkMode": "awsvpc"
  }
]
DEFINITION
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  memory                   = 512
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  cpu                      = 256
}
