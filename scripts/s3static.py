'''
aws s3api create-bucket --bucket dshtran007 --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2
aws iam create-user --user-name awsS3user
aws iam create-login-profile --user-name awsS3user --password Password123!
186816907048 "arn:aws:iam::aws:policy/AmazonS3FullAccess",
aws iam list-policies --query "Policies[?contains(PolicyName,'S3')]"
aws iam attach-user-policy --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess --user-name awsS3user
aws s3 website s3://<my-bucket>/ --index-document index.html
aws s3 cp /home/ec2-user/sysops-activity-files/static-website/ s3://<my-bucket>/ --recursive --acl public-read
aws s3 ls <my-bucket>
aws sts get-caller-identity --query Account --output text

aws s3 cp /home/ec2-user/sysops-activity-files/static-website/ s3://dshtran007/ --recursive --acl public-read
aws s3 sync . s3://dshtran007/ --acl public-read --exclude "*.sh" --delete
'''