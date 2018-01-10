#!/bin/sh -f

export REPOSITORY_URL=git@git.paytvlabs.com.br:legacy/dth-st/product-sagemcom-dsi74v2.git

#eval `ssh-agent -s`
#ssh-add ~/.ssh/id_rsa

ssh-keyscan git.paytvlabs.com.br >> ~/.ssh/known_hosts
git clone $REPOSITORY_URL repo
cd repo
git checkout repository-migration
git submodule update --init
