resource "aws_subnet" "public_subnet_1" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.0.0/20"
  availability_zone = "ap-northeast-1a"
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.16.0/20"
  availability_zone = "ap-northeast-1c"
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.32.0/20"
  availability_zone = "ap-northeast-1a"
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.48.0/20"
  availability_zone = "ap-northeast-1c"
}
