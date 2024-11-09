resource "aws_instance" "sever-docker-app" {
  ami                    = "ami-0866a3c8686eaeeba"
  instance_type          = "t2.micro"
  key_name               = "terraform-user" #Adicione sua Key Pairs da AWS aqui!
  vpc_security_group_ids = [aws_security_group.bt-avantiSG-app.id]
  user_data              = file("script.sh")

  tags = {
    Name = "sever-docker-app"
  }
}
