#!/bin/bash

apt-add-repository ppa:git-core/ppa -y
apt-get update
apt-get install git=1:2.14.1-1.1~ppa0~ubuntu16.04.1 -y