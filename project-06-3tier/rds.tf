resource "aws_db_subnet_group" "db_sub" {
  name       = "project06-db-sub"
  subnet_ids = [aws_subnet.private_a.id, aws_subnet.private_b.id]
  tags = {
    Name = "project06-db-subnet"
  }
}

resource "aws_db_instance" "db" {
  identifier             = "project06-db"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  username               = "admin"
  password               = "Password123!"
  db_subnet_group_name   = aws_db_subnet_group.db_sub.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  skip_final_snapshot    = true
  publicly_accessible    = false
}
