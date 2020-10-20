#!/bin/bash
set -x

sudo apt-get update
sudo sed -i 's/tcsh/bash/g' /etc/passwd
