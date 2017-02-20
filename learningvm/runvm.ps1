VBoxManage import output-virtualbox-ovf/devopskatas_learningvm.ovf
vboxmanage modifyvm "devopskatas_learningvm" --vram 12
vboxmanage startvm "devopskatas_learningvm"