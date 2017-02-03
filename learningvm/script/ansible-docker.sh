git clone https://github.com/angstwad/docker.ubuntu.git
cd docker.ubuntu
ansible-playbook docker.yml -i hosts --connection=local