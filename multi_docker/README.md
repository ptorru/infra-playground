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


# References
* [Solving the key check on Ansible](https://blog.risingstack.com/getting-started-with-ansible-infrastructure-automation/)
* [Solving the sudo password issue](https://knowledge.broadcom.com/external/article/193351/ansible-failed-msg-missing-sudo-passwor.html)
* [SO - how to remove keys from known hosts](https://askubuntu.com/questions/20865/is-it-possible-to-remove-a-particular-host-key-from-sshs-known-hosts-file)
* [Adding user to sudoers](https://www.linuxfordevices.com/tutorials/linux/adding-users-to-sudoers)
* [Assigning ports to ansible inventory entries](https://stackoverflow.com/questions/61654066/ansible-inventory-how-to-identify-hosts-by-port)
* [Dockerfile for ssh access](https://adamtheautomator.com/ssh-into-docker-container/)
* [Notes on Dockerfile commands](https://medium.com/bb-tutorials-and-thoughts/docker-a-beginners-guide-to-dockerfile-with-a-sample-project-6c1ac1f17490)
