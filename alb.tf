resource "aws_lb" "main" {
  name               = "${var.name}-${var.env}"
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  subnets            = var.subnets
  enable_deletion_protection = var.enable_deletion_protection
  security_groups = [aws_security_group.main.id]

  tags = merge(
    var.tags, { Name = "${var.name}-${var.env}" }
  )
}

resource "aws_security_group" "main" {
  name        = "${var.name}-${var.env}-lb"
  description = "${var.name}-${var.env}-lb"
  vpc_id      = var.vpc_id

  ingress {
    description = "APP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allow_cidr
  }

  tags = merge(
    var.tags, { Name = "${var.name}-${var.env}-lb" }
  )
}

resource "aws_vpc_security_group_egress_rule" "egress" {
  security_group_id = aws_security_group.main.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}

resource "aws_lb_listener" "main" {
  load_balancer_arn = aws_lb.main.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/html"
      message_body = "503 - Invalid"
      status_code  = "503"
    }
  }
}
