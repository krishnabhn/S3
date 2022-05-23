output "user_arn" {
  value = aws_iam_user.newemp.*.arn
}

output "access_key" {
    value = aws_iam_access_key.newemp_keys
    sensitive = true
}
