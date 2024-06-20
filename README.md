# How to run utilize this repository

This repository contains Terraform configurations to create VPCs and EC2 instances into them in `us-east-1` & `us-east-2` regions.

To create VPCs in two diffrent regions `us-east-1` & `us-east-2` execute below code

```bash
$ cd vpc/
$ terraform init
$ terraform apply
```

Make sure you have created environment variables `AWS_ACCESS_KEY_ID` & `AWS_ACCESS_KEY_SECRET` with AWS Acess Key & Secret respectively.

Then, Run/Start the same EC2 instance in the created VPCs as follows

```bash
$ cd ec2/
$ terraform init
$ terraform apply
```

_**Note:** Ec2 instances that are being created via terraform configurations inside `ec2/` directory uses a custom module inside `ec2/module/` as template to create instances in two diffrent regions with the help of multiple providers._
