Jenkins on AWS using Ansible

Prerequisites:
Install ansible
AWS account

Edit aws_jenkins.yaml and fill in the vars:

    aws_access_key:
    aws_secret_key:
    key_name:
    group_id:

Run the playbook:
ansible-playbook aws_jenkins.yaml

SSH Access
ssh bitnami@<public_dns>
http://<public_dns>

Jenkins Access
http://<public_dns>
