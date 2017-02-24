Jenkins Packer
==============

You got in here the following:
 * Vagrantfile
 * vb_ubuntu-16.10.json (this is a packer file that can create your own instance of VirtualBox at directory **vb_output**)
 * aws_ami_jenkins.json (this is the AWS version of the build. It will build an AWS AMI)


Requirements
------------

You need the following:
 * Packer
 * vagrant and vagrant-vbguest plugin
 * you also need your own **~/.ssh/id_rsa.pub** key.
 * Ansible Version which is currently being installed INSIDE of the instance : ansible 2.2.1.0

   Except for AWS_AMI, I have tried to create a key based passwordless solution , it's at your own criteria to modify or amend all those parts.


# Vagrantfile

To run it execute: **vagrant up**
(ensure you got the public key read on your home directory. Double check the variables defined within the file)

# vb_ubuntu-16.10.json

Verify the variables within the script satisfy your requirements.

- Test the build: **packer validate vb_ubuntu-16.10.json**
- To run it execute: **packer build vb_ubuntu-16.10.json**

# aws_ami_jenkins.json

Verify the variables within the script satisfy your requirements.

- Test the build: **packer validate aws_ami_jenkins.json**
- To run it execute: **packer build aws_ami_jenkins.json**
