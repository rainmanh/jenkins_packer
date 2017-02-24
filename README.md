Jenkins Packer
==============

This is a PoC for installing Jenkins using Packer.

I base the ansible code on Larry's solution (https://github.com/mrlesmithjr/ansible-jenkins) on what jenkins relate with some changes to it.
I am also adding a iptable role as I would like to add some extra security to this setup.

This PoC includes:
 * Testing through Travis
 * Testing (ports) within the jenkins ansible role.
 * I am also including a Thorfile for syntax testing
  * Execution:  bundle exec thor packer:validate

 ```
  aws_ami_jenkins.json
  Template validated successfully.

  vb_ubuntu-16.10.json
  Template validated successfully.
  ```

  Requirements
  ------------

  You need the following:
   * Packer
   * vagrant and vagrant-vbguest plugin.
   * you also need your own **~/.ssh/id_rsa.pub** key.
   * Ansible Version which is currently being installed INSIDE of the instance : ansible 2.2.1.0

     Except for AWS_AMI, I have tried to create a key based passwordless solution , it's at your own criteria to modify or amend all those parts.


Further Details and Information can be found in the README.md files within the *packer* and *ansible* directories.

TO-DO
-----

Dusting off around, a bit of further housekeeping.


