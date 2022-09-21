'''
{
  "schemaVersion": "2.2",
  "description": "Install Dashboard App",
  "mainSteps": [
    {
      "inputs": {
        "runCommand": [
          " #!/bin/sh",
          " # Install Apache Web Server and PHP",
          " yum install -y httpd",
          " amazon-linux-extras install -y php7.2",
          " # Turn on web server",
          " systemctl enable httpd.service",
          " systemctl start  httpd.service",
          " # Download and install the AWS SDK for PHP",
          " wget https://github.com/aws/aws-sdk-php/releases/download/3.62.3/aws.zip",
          " unzip aws -d /var/www/html",
          " # Download Application files",
          " #wget https://aws-tc-largeobjects.s3.amazonaws.com/CUR-TF-100-RESTRT-1/169-lab-%5BJAWS%5D-systems-manager/scripts/widget-app.zip",
          " wget https://aws-tc-largeobjects.s3.us-west-2.amazonaws.com/CUR-TF-100-RESTRT-1/169-lab-JAWS-systems-manager/s3/widget-app.zip",
          " unzip widget-app.zip -d /var/www/html/"
        ]
      },
      "name": "InstallDashboardApp",
      "action": "aws:runShellScript"
    }
  ]
}


aws ssm send-command --document-name "c56586a963522l2687944t1w839205812381-InstallDashboardApp-TIQGR3M7C2vQ" --document-version "1" --targets '[{"Key":"InstanceIds","Values":["i-0cf3af93fc475cf70"]}]' --parameters '{}' --timeout-seconds 600 --max-concurrency "50" --max-errors "0" --region us-west-2

# Get region
AZ=`curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone`
export AWS_DEFAULT_REGION=${AZ::-1}

# List information about EC2 instances
aws ec2 describe-instances

'''

