#!/bin/bash
cd ~/dk
rm -rf gogs-repositories
rm -rf web-storelist-k7
rm -rf jenkins-gogs
curl -O https://cdn.gogs.io/0.11.29/linux_amd64.tar.gz
mkdir -p jenkins-gogs
tar -xzvf linux_amd64.tar.gz -C jenkins-gogs
mkdir jenkins-gogs/gogs/custom
mkdir jenkins-gogs/gogs/custom/conf
cp app.ini jenkins-gogs/gogs/custom/conf/app.ini
cd jenkins-gogs/gogs
sudo -H -u devops ./gogs web &
sleep 5
sudo -H -u devops ./gogs admin create-user --name=devops --password=katas --email=devops@katas.com --admin=true
sudo -H -u devops ./gogs admin create-user --name=cody.coder --password=katas --email=cody.coder@thecoders.com --admin=false
cd ~/dk
git clone https://github.com/devopskatas/web-storelist-k7.git
sudo -H -u devops curl -u devops:katas -H "Content-Type: application/json" -X POST -d '{"name":"web-storelist","description":"The Coder family Storelist app","private": false}' localhost:3000/api/v1/admin/users/cody.coder/repos 
cd web-storelist-k7
git remote set-url origin http://localhost:3000/cody.coder/web-storelist.git
git push http://cody.coder:katas@localhost:3000/cody.coder/web-storelist.git
sudo -H -u devops pkill gogs