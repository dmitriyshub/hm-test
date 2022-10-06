
#To get a full description of the Processor instance, copy the following command and run it from within your instance
aws ec2 describe-instances --filter 'Name=tag:Name,Values=Processor'

#To narrow down the results of the previous command further, copy the following command and run it from within your instance.
# If the command returns null, change Reservations[0] to Reservations[1]:
aws ec2 describe-instances --filter 'Name=tag:Name,Values=Processor' --query 'Reservations[0].Instances[0].BlockDeviceMappings[0].Ebs.{VolumeId:VolumeId}'

#Before taking a snapshot, you will shut down the Processor instance, which requires its instance ID.
# To obtain the instance ID, copy the following command and run it from within your instance.
# If Reservations[0] was changed to Reservations[1] in the previous step,
# Reservations[0] will need to be changed to Reservations[1] for the next command:
aws ec2 describe-instances --filters 'Name=tag:Name,Values=Processor' --query 'Reservations[0].Instances[0].InstanceId'

#To shut down the Processor instance, copy the following command, replace INSTANCE-ID with your instance id, and run it from within your instance:
aws ec2 stop-instances --instance-ids INSTANCE-ID


#Before moving to the next step in this procedure, verify that the Processor instance has stopped by running the following command,
# replacing INSTANCE-ID with your instance id. When the Processor instance has stopped, the command will return to a prompt.
aws ec2 wait instance-stopped --instance-id INSTANCE-ID


#To create your first snapshot of the root volume of your Processor instance, copy the following command,
# replace VOLUME-ID_ with your volume id,  and run it in your SSH window:
aws ec2 create-snapshot --volume-id VOLUME-ID

#To check the status of your snapshot, copy the following command, replace SNAPSHOT-ID your snapshot-id, and run it in your SSH window:
aws ec2 wait snapshot-completed --snapshot-id SNAPSHOT-ID

#To restart the Processor instance, copy the following command, replace the INSTANCE-ID to your instance id and run it in your SSH window:
aws ec2 start-instances --instance-ids INSTANCE-ID

#To check on the status of the restart operation, copy the following command, replace INSTANCE-ID with your instance id, and run it in your SSH window:
aws ec2 wait instance-running --instance-id INSTANCE-ID

#To create a cron entry that will schedule a job that runs every minute, copy the following command, replace VOLUME-ID with your volume-id and run it from within your instance:
echo "* * * * *  aws ec2 create-snapshot --volume-id VOLUME-ID 2>&1 >> /tmp/cronlog" > cronjob
crontab cronjob


#To verify that subsequent snapshots are being created, copy the following command, replace <volume-id> with your volume-id and run it from within your instance:
aws ec2 describe-snapshots --filters "Name=volume-id,Values=<volume-id>"
crontab -r

#Before running snapshotter_v2.py, copy the following command and run it from within your instance (replacing VOLUME-ID with your volume-id):
aws ec2 describe-snapshots --filters "Name=volume-id, Values=VOLUME-ID" --query 'Snapshots[*].SnapshotId'

-----------------------------------
-----------------------------------

#Before synchronizing content with your Amazon S3 bucket, you will need to enable versioning on your bucket.
# To enable versioning, copy the following command (replacing S3-BUCKET-NAME with your bucket name) and run it from within your instance:
aws s3api put-bucket-versioning --bucket S3-BUCKET-NAME --versioning-configuration Status=Enabled

#To synchronize the contents of the files folder with your Amazon S3 bucket, copy the following command
# (replacing S3-BUCKET-NAME with your bucket name) and run it from within your instance:
aws s3 sync files s3://S3-BUCKET-NAME/files/

#To confirm the state of your files, use the following command (replacing S3-BUCKET-NAME with your bucket name):
aws s3 ls s3://S3-BUCKET-NAME/files/

#To delete the same file from the server, use the --delete option to the aws s3 sync command.
# Copy the following command (replacing S3-BUCKET-NAME with your bucket name) and run it from within your instance:
aws s3 sync files s3://S3-BUCKET-NAME/files/ --delete
#Note Depending on the version of the AWS CLI that you are using, you may see the following error:
 #
 #delete failed: s3://custombucketname/files/file2.txt 'str' object has no attribute 'text'
 #
 #This is simply a parsing response error that exists in a single version of the AWS CLI; as you will confirm in the next step,
 # the file has successfully been deleted in spite of this error.

#Now, try to recover the old version of file1.txt. To view a list of past versions of this file, use the aws s3api list-object-versions command:
aws s3api list-object-versions --bucket S3-BUCKET-NAME --prefix files/file1.txt
#The output will contain a DeleteMarkers and a Versions block. DeleteMarkers indicates where the delete marker is;
# i.e., if you perform an aws s3 rm operation (or an aws s3 sync operation with the --delete option),
# this is the next version that the file will revert to.
 #
 #The Versions block contains a list of all available versions. You should have only a single Versions entry.
 # Find the field VersionId and copy its value; we will refer to this as version-id in the next step.

#Because there is no direct command to restore an older version of an Amazon S3 object to its own bucket,
# you will need to re-download the old version and then sync again to Amazon S3. To download the previous version of file1.txt,
# copy the following command (replacing VERSION-ID with your version-id and S3-BUCKET-NAME with your bucket name)
# and run it from within your instance:
aws s3api get-object --bucket S3-BUCKET-NAME --key files/file1.txt --version-id VERSION-ID files/file1.txt


#To re-sync the contents of the files/ folder to Amazon S3, copy the following command
# (replacing S3-BUCKET-NAME with your bucket name) and run it from within your instance:
aws s3 sync files s3://S3-BUCKET-NAME/files/

#Finally, to verify that a new version of file1.txt has been pushed to Amazon S3,
# copy the following command (replacing S3-BUCKET-NAME with your bucket name) and run it from within your instance:
aws s3 ls s3://S3-BUCKET-NAME/files/



