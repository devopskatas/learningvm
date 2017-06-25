#!/bin/bash

apt-add-repository ppa:git-core/ppa -y
apt-get update
apt-get install git=1:2.13.0-0ppa1~ubuntu16.04.1 -y