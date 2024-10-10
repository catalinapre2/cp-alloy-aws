- cd to Project directory 
- (if not done so before configure your cli) aws configure
- after creating a set of credentials in https://us-east-1.console.aws.amazon.com/iam/home?region=us-west-2#/security_credentials you copy said credentials in aws on your machine
- Give us-east1 for the region(optional). Not giving a region makes the resource global. 
- For output format give it JSON
- I am doing this from root account. If you prefer, you will have to create a new Role (in IAM) and ensure you assign it permissions. This is done  by attaching policies to enable the role to do the tasks you want it to be able to perform. For this task you want attach AmazonS3FullAccess 
- Run terraform plan
- Run terraform apply
- Start using you new environment
- (use update / destroy depending on what you want to do with the project)

Other notes: 
I used S3 for data storage because I don’t know what data will be stored there and it gives the most flexibility
For compute, I am using EC2 and the instance I picked is t2.nano because it’s the cheapest option in EC2.
if we want more compute we can use larger instances, and if we want want less we can use Lambda for light functions to use on the fly.

