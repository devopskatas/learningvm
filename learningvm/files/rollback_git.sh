cd /home/devops/storelist
sudo rm -rf .git
rm storelist.txt
wget https://gist.githubusercontent.com/devopskatas/bd005214affd89d8c80cc87442d147ac/raw/0ec7cdf7c803c2c78eea30ddf9584d1d604f7b91/storelist.txt
<<<<<<< HEAD
sudo chown devops storelist.txt
=======
>>>>>>> 23ba044a9f5762b543e34c11be8acde4d7f2949e
cd /home/devops/web-storelist
sudo rm -rf .git
rm storelist.htm
wget https://gist.githubusercontent.com/devopskatas/47ae5c6550bc823dfa6436aac6de595f/raw/5dda8cefecea3752352003e87dda1845ecb55085/storelist.htm
<<<<<<< HEAD
sudo chown devops storelist.htm
=======
>>>>>>> 23ba044a9f5762b543e34c11be8acde4d7f2949e
docker stop $(docker ps -q)
docker rm $(docker ps -aq)
cd /home/devops
sudo rm -rf ken.coder
sudo rm -rf carrie.coder