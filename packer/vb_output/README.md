Jenkins BOX Output
==================

This Directory contains the generated Output from the **packer build vb_ubuntu-16.10.json** command and the Vagrantfile it's ready to run that instance if you need that. Simple change the **VAGRANTFILE** variable in it

```
VAGRANTFILE="file://ubuntu-16.10-virtualbox-20170223154251.box"
```

Execution, as usual

```
vagrant up
```
