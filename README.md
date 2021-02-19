# Terraform
This project is a collection of terraform/ansible files used for tests purposes


### Tech

Terraform description:

#### Provider AWS
* [aws\apache] - Deploy a Ubuntu VM and install Apache WebServer


### Installation

Install Terraform:

* Ubuntu/Debian 
```sh
$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
$ sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
$ sudo apt-get update && sudo apt-get install terraform
```

* Centos 7
```sh
$ sudo yum install -y yum-utils
$ sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
$ sudo yum -y install terraform
```

HashiCorp - Install Terraform documentation
https://learn.hashicorp.com/tutorials/terraform/install-cli

Install Ansible:

* Ubuntu
```sh
$ sudo apt update
$ sudo apt install ansible
```

* Centos 7
```sh
$ sudo yum install epel-release
$ sudo yum install ansible
```

### Configuring Terraform

* AWS

Creating a AWS Access Key

https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-creds

```sh
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-west-2"
```

### Execute Terraform

Deploy:

```sh
$ terraform init
$ terraform plan
$ terraform apply
```
