Copy-Item -Path F:\Dave\appliance_builds\ubuntu\output-devopskatas_learningvm-virtualbox-iso\devopskatas_learningvm.ovf .\
robocopy /xc /xn /is F:\Dave\appliance_builds\ubuntu\output-devopskatas_learningvm-virtualbox-iso\devopskatas_learningvm-disk1.vmdk .\
packer build learningvm.json