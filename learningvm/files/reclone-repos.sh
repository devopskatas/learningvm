cd /home/devops
rm -rf ken.coder
rm -rf carrie.coder
git clone http://localhost:8080/git/ken.coder/web-storelist.git ken.coder
git clone http://localhost:8080/git/ken.coder/web-storelist.git carrie.coder
cd /home/devops/ken.coder
git config user.email 'ken@thecoders.com'
git config user.name 'ken.coder'
git config credential.helper store
cd /home/devops/carrie.coder
git config user.email 'carrie@thecoders.com'
git config user.name 'carrie.coder'
git config credential.helper store
chown -R devops ken.coder
chown -R devops carrie.coder