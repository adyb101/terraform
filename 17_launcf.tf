resource "aws_launch_configuration" "minajeong_lacf" {
  name          = "minajeong-web"
  image_id      = aws_ami_from_instance.minajeong_ami.id
  instance_type = "t2.micro"
  iam_instance_profile = "admin_role2"
  security_groups = [aws_security_group.minajeogn_websg.id]
  key_name = "tf-key1"
  user_data = <<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
    lifecycle {
      create_before_destroy  = true 
    }
}