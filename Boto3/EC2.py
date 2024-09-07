import boto3
import time

######### Configuration #######################################
KEY_NAME = "MyKeyPair"
SECURITY_GROUP_NAME = "MySecurityGroup"
AMI_ID = "ami-0abcdef1234567890"  #Replace with a valid AMI ID in your region
INSTANCE_TYPE = "t3.micro"
REGION = "us-west-2"  #Replace with your desired region

######### Create a session #######################################
session = boto3.Session(region_name=REGION)

######### Create EC2 client #######################################
ec2_client = session.client('ec2')

######### Create Key Pair #######################################
key_pair = ec2_client.create_key_pair(KeyName=KEY_NAME)
with open(f"{KEY_NAME}.pem", "w") as key_file:
    key_file.write(key_pair['KeyMaterial'])

######### Set file permissions #######################################
import os
os.chmod(f"{KEY_NAME}.pem", 0o400)

######### Create Security Group #######################################
security_group = ec2_client.create_security_group(GroupName=SECURITY_GROUP_NAME, Description="Security group for t3.micro instance")
security_group_id = security_group['GroupId']
print(f"Security Group ID: {security_group_id}")

######### Authorize Security Group Ingress #######################################
ec2_client.authorize_security_group_ingress(GroupId=security_group_id, IpPermissions=[
    {
        'IpProtocol': 'tcp',
        'FromPort': 22,
        'ToPort': 22,
        'IpRanges': [{'CidrIp': '0.0.0.0/0'}]
    }
])

######### Launch EC2 Instance #######################################
instances = ec2_client.run_instances(
    ImageId=AMI_ID,
    InstanceType=INSTANCE_TYPE,
    KeyName=KEY_NAME,
    SecurityGroupIds=[security_group_id],
    MinCount=1,
    MaxCount=1
)
instance_id = instances['Instances'][0]['InstanceId']
print(f"Instance ID: {instance_id}")

######### Describe EC2 Instances #######################################
def describe_instance(instance_id):
    response = ec2_client.describe_instances(InstanceIds=[instance_id])
    print(response)

######### Wait for instance to be running #######################################
print("Waiting for instance to be running...")
waiter = ec2_client.get_waiter('instance_running')
waiter.wait(InstanceIds=[instance_id])
describe_instance(instance_id)


### ---------------------------------------------------------------------
### Other Operations
### ---------------------------------------------------------------------


######### Stop EC2 Instance #######################################
# ec2_client.stop_instances(InstanceIds=[instance_id])
# print(f"Instance {instance_id} stopped.")

# ######### Wait for instance to stop #######################################
# print("Waiting for instance to stop...")
# waiter = ec2_client.get_waiter('instance_stopped')
# waiter.wait(InstanceIds=[instance_id])
# describe_instance(instance_id)

# ######### Start EC2 Instance #######################################
# ec2_client.start_instances(InstanceIds=[instance_id])
# print(f"Instance {instance_id} started.")

# ######### Wait for instance to be running #######################################
# print("Waiting for instance to be running...")
# waiter.wait(InstanceIds=[instance_id])
# describe_instance(instance_id)

# ######### Reboot EC2 Instance #######################################
# ec2_client.reboot_instances(InstanceIds=[instance_id])
# print(f"Instance {instance_id} rebooted.")
# time.sleep(60)  #Wait for the instance to be back in running state
# describe_instance(instance_id)

# ######### Terminate EC2 Instance #######################################
# ec2_client.terminate_instances(InstanceIds=[instance_id])
# print(f"Instance {instance_id} terminated.")

# ######### Wait for instance to terminate #######################################
# print("Waiting for instance to terminate...")
# waiter = ec2_client.get_waiter('instance_terminated')
# waiter.wait(InstanceIds=[instance_id])

# ######### Delete Security Group #######################################
# ec2_client.delete_security_group(GroupId=security_group_id)
# print(f"Security Group {security_group_id} deleted.")

# ######### Delete Key Pair #######################################
# ec2_client.delete_key_pair(KeyName=KEY_NAME)
# os.remove(f"{KEY_NAME}.pem")
# print(f"Key Pair {KEY_NAME} deleted and {KEY_NAME}.pem file removed.")

# print("All operations completed.")
