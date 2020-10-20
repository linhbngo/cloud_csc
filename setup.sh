#!/bin/bash
set -x

sudo apt-get update
sudo sed -i 's/bash/tcsh/g' /etc/passwd
