resource "aws_ami_from_instance" "minajeong_ami" {
  name               = "minajeong-ami"
  source_instance_id = aws_instance.minajeong_weba.id
}