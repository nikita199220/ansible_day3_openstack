sudo bash
yum install python-devel krb5-devel krb5-libs krb5-workstation python-pip gcc
sudo bash
ll
cd Ansible_advanced/
ll
cd ad/
ll
cd win_ad_install/tasks/ma
vi win_ad_install/tasks/main.yml 
vi win_ad_install/vars/main.yml 
sudo vi win_ad_install/vars/main.yml 
ansible-playbook ad.yml -vv
sudo ansible-playbook ad.yml -vv
yum install -y python-devel krb5-devel krb5-liobs krb5-workstation python-pip gcc
sudo yum install -y python-devel krb5-devel krb5-liobs krb5-workstation python-pip gcc
sudo yum install -y python-devel krb5-devel krb5-libs krb5-workstation python-pip gcc
ansible windows -m win_ping
sudo vi win_ad_install/vars/main.yml 
vi win_ad_install/tasks/main.yml 
cd win_ad_install/tasks/
ls -la
rm -rf .main.yml.swp 
sudo rm -rf .main.yml.swp 
ls -la
vi main.yml 
sudo vi main.yml 
sudo su
pip install pywinrm0.2.2
pip install pywinrm-0.2.2
ansible windows -m win_ping
yum install python-devel krb5-devel krb5-libs krb5-workstation gcc
sudo yum install python-devel krb5-devel krb5-libs krb5-workstation gcc -y 
ll
cd Ansible_advanced/
ll
cd ad/
ll
vi win_ad_install/tasks/main.yml 
sudo su 
ll
cd Ansible_advanced/
ll
mkdir aduser
sudo su
cd Ansible_advanced/
cd ad/
vi win_ad_install/tasks/main.yml 
sudo su
cd /home/nikita.sh-hcl.com/
ls
cd Ansible_advanced/
ls
 
cd openssh/
ll
vi openssh/tasks/main.yml 
vi openssh/tasks/main.yml 
cd ..
cd ..
cd Ansible_advanced/
git init
sudo git init
git commit -m "first commit"
sudo git commit -m "first commit"
ls
git add .
sudo git add .
sudo git commit -m "first commit"
sudo git remote add origin https://github.com/nikkushar/New_Advanced.git
sudo git init
sudo git add .
sudo git commit -m "first commit"
ls
sudo git remote add origin https://github.com/nikkushar/New_Advanced.git
sudo git push -u origin master
ls
cd ad
ls
cd win_ad_install/
ls
cd tasks/
ls
vim main.yml 
cat /etc/ansible/hosts
sudo vim main.yml 
sudo vim main.yml 
sudo vim main.yml 
ls
cd ..
sudo vim  vars/main.yml 
cd ..
ls
ansible-playbook ad.yml
ls
sudo vim win_ad_install/tasks/main.yml 
sudo vim win_ad_install/tasks/main.yml 
sudo su
cat /etc/ansible/hosts 
vi /etc/ansible/ansible.cfg 
cd Ansible_advanced/
ll
cd ad
ansible-playbook ad.yml -vv
export GUID=`hostname | awk -F"." '{print $2}'`
ssh mickey@ad1.${GUID}.example.opentlc.com
sudo ssh mickey@ad1.${GUID}.example.opentlc.com
sudo ssh administrator@ad1.${GUID}.example.opentlc.com
sudo ssh mickey@ad1.${GUID}.example.opentlc.com
sudo ssh administrator@ad1.${GUID}.example.opentlc.com
sudo ssh mickey@ad1.${GUID}.example.opentlc.com
ll
cd Ansible_advanced/ll
cd Ansible_advanced/
ll
cd ad/
ll
vi win_ad_install/tasks/main.yml 
wget http://www.opentlc.com/download/ansible_bootcamp/openstack_keys/openstack.pem -O ~/.ssh/openstack.pem
chmod 400 ~/.ssh/openstack.pem
history | grep yum
ssh -i ${MYKEY} ${MYUSER}@workstation-${GUID}.rhpds.opentlc.com
export GUID=7ee0
cd ~/.ssh/
ls
expoprt MYKEY=~/.ssh/openstack.pem
export MYKEY=~/.ssh/openstack.pem
export MYUSER=nikita.sh-hcl.com
ssh -i ${MYKEY} ${MYUSER}@workstation-${GUID}.rhpds.opentlc.com
cd ~
clear
cat << EOF >> ssh.cfg
Host workstation-${GUID}.rhpds.opentlc.com
 Hostname workstation-${GUID}.rhpds.opentlc.com
 IdentityFile ~/.ssh/openstack.pem
 ForwardAgent yes
 User cloud-user
 StrictHostKeyChecking no

cat << EOF >> ssh.cfg
Host workstation-${GUID}.rhpds.opentlc.com
 Hostname workstation-${GUID}.rhpds.opentlc.com
 IdentityFile ~/.ssh/openstack.pem
 ForwardAgent yes
 User cloud-user
 StrictHostKeyChecking no
 PasswordAuthentication no

Host 10.10.10.*
 User cloud-user
 IdentityFile ~/.ssh/openstack.pem
 ProxyCommand ssh -F ./ssh.cfg workstation-${GUID}.rhpds.opentlc.com -W %h:%p
 StrictHostKeyChecking no
EOF

cat << EOF > osp_jumpbox_inventory
[jumpbox]
workstation-${GUID}.rhpds.opentlc.com ansible_ssh_user=cloud-user ansible_ssh_private_key_file=~/.ssh/openstack.pem
EOF

ansible -i osp_jumpbox_inventory all -m ping
ansible -i osp_jumpbox_inventory jumpbox -m os_user_facts -a cloud=ospcloud -v
cat << EOF > ansible.cfg
[defaults]
inventory=./osp_jumpbox_inventory

[privilege_escalation]
become=True
become_method=sudo

[ssh_connection]
ssh_args=" -F ./ssh.cfg -o ControlMaster=auto -o ControlPersist=60s"
host_key_checking=False
EOF

