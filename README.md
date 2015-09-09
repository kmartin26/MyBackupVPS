# MyBackupVPS
Backup Your VPS to Your Dropbox Account !

This script work for Linux distributions. Tested with Debian / Ubuntu.
# How to use ?
Note: I usually place it to the root folder.

First you need cURL on your VPS/Dedicated.

- apt-get install curl

Edit the backup.sh to feet your needs.

- nano backup.sh

Then, we apply execution permissions on both scripts.

- chmod +x backup.sh dropbox_uploader.sh

Now, run it and follow the instruction to set-up the Dropbox API !

- ./backup.sh

Your Server Is Now Backup To Your Dropbox !
