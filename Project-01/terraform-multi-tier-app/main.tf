resource "aws_instance" "example" {
  ami = "ami-007e5a061b93ceb2f" #Amazon Linux AMI free
  instance_type = "t3.micro"

user_data = <<-EOF
            #!/bin/bash
            yum install -y httpd
            systemctl start httpd
            systemctl enable httpd
            echo '<h1>Hello from Terraform!</h1>' > /var/www/html/index.html
            EOF

  tags = {
    Name = "SimpleWebServer"
  }
}