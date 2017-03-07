cd /home/devops
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)
docker image rm $(docker image ls -q)
rm -rf dockervolume
rm -rf dockerimage
docker volume rm $(docker volume ls -q)
docker network rm mynet