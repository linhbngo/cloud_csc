#!/bin/bash
set -x

sudo apt-get update
sudo sed -i 's/tcsh/bash/g' /etc/passwd

# setup gdb-peda
while IFS= read -r line; do
  sudo su $line -c "cd ~; git clone https://github.com/longld/peda.git; echo 'source ~/peda/peda.py' > ~/.gdbinit"
done < <( ls -l /users | grep 4096 | cut -d' ' -f3 )
