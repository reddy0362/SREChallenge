resource "aws_key_pair" "default"{
  key_name = "webserver"
  public_key = "${file("${var.key_path}")}"
}
 
resource "aws_instance" "webserver" {
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
  key_name = "${aws_key_pair.default.id}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.instance.id}"]
 
  tags {
    Name  = "webserver"
  }
}
