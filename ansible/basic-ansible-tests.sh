#add a server to an ansible inventory
cat > inventory.txt
target01 ansible_host=ansible-target01.swo.com ansible_ssh_common_args='-o ForwardAgent=yes'
target02 ansible_host=ansible-target02.swo.com ansible_ssh_common_args='-o ForwardAgent=yes'

[target_group]
target01
target02

db1 ansible_host=server4.company.com ansible_connection=winrm ansible_ssh_common_args='-o ForwardAgent=yes'

#make a basic ping test with ansible
ansible target01 -m ping -i inventory.txt


