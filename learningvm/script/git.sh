#!/bin/bash

apt-add-repository ppa:git-core/ppa -y

apt-get update

apt-get install git=1:2.11.0-2~ppa0~ubuntu16.04.1 -y