resource "aws_iam_user" "newemp" {
  count = "${length(var.username)}"
  name = "${element(var.username,count.index)}"
}

resource "aws_iam_user_policy" "newemp_policy" {
  count = length(var.username)
  name = "new"
  user = element(var.username,count.index)
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:Describe*"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

# generate keys for service account user
resource "aws_iam_access_key" "newemp_keys" {
  count = length(var.username)
  user = element(var.username,count.index)
}
