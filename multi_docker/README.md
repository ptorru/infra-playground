# Multi-Docker
Requires:
* docker
* ansible

Here are the three commands to run this example:

```bash
# make a copy of the public id to access the nodes
cp ~/.ssh/id_rsa.pub .

# get everything going.
./start.sh

# run the ansible playbook
ansible-playbook main.yaml -f 4

#stop
./stop.sh
```
