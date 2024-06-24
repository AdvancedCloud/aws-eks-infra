output "EKS_CLUSTER_ROLE_ARN" {
  value = aws_iam_role.eks_cluster_role.arn
}

output "NODE_GROUP_ROLE_ARN" {
  value = aws_iam_role.node_group.arn
}

output "EBS_CSI_DRIVER_ROLE_ARN" {
  value = aws_iam_role.ebs_csi_driver_role.arn
}