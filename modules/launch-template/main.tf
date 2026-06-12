resource "aws_launch_template" "web" {
  image_id = "ami-0521cb2d60cfbb1a6"
  instance_type = "t2.micro"
  vpc_security_group_ids = var.security_group_ids

  user_data = base64encode(<<EOF
#!/bin/bash
set -e

yum update -y
amazon-linux-extras enable nginx1
yum clean metadata
yum install -y httpd
systemctl enable httpd
systemctl start httpd

PRIVATE_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4 || echo "unknown")
PUBLIC_IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4 || echo "none")
cat > /var/www/html/index.html <<HTML
<html><body>
  <h1>Private IP: $${PRIVATE_IP}</h1>
  <h2>Public IP: $${PUBLIC_IP}</h2>
  <p>Refresh to see a different instance when the ALB routes traffic.</p>
</body></html>
HTML
EOF
)
}
