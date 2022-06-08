# aws-amplify-static-web-terraform
Using attached scripts you can create host a front-end application via AWS Amplify

Before you create the terraform scripts I would like you to read about AWS Amplify and test it via manually. 

Here are a couple of links that may help you to get the basic understading about AWS Amplify.

https://aws.amazon.com/amplify/
https://www.youtube.com/watch?v=ucVK6Z55PZY&ab_channel=FocusOtter


# This repo will create the following resources in your aws account under us-east-1, before you execute this there are a few prerequisites to do.

There should be a S3 bucket to upload terraform state, if you having an existing please add the S3 and the key in provider.tf file
There should be a Github personal access token and you need to add the key in terraform.tfvars

If you need to change the region that to be deploy you can do that in provider.tf file

Once you all above tasks are completed, you can execute following

    Configure AWS CLI via aws configure
    terrform init
    terrform plan
    terrform apply
    yes
