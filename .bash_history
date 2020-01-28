ssh-keygen --help
ssh-keygen -N '' -f ~/.ssh/id_rsa
ls -l ~/.ssh/
sudo - su
exit
export GUID=`hostname | awk -F"." '{print $2}'`
hostname
ssh app1.e9a5.internal
ssh appdb1.e9a5.internal
ansible frontends -m ping
ansible all --list-hosts
ssh frontend1.e9a5.internal
ssh app2.e9a5.internal
ssh support1.e9a5.internal
ansible all --list-hosts
ansible frontends -m ping
mkdir ansible_implementation
cd ansible_implementation/
cat << EOF > ansible.cfg
[defaults]
inventory = /home/devops/ansible_implementation/hosts
host_key_checking = False
EOF

ll
cat ansible.cfg 
export GUID=`hostname | awk -F"." '{print $2}'`
cat << EOF > /home/devops/ansible_implementation/hosts
frontend1.${GUID}.internal
appdb1.${GUID}.internal
app1.${GUID}.internal
support1.${GUID}.internal
app2.${GUID}.internal
EOF

ansible frontend1.${GUID}.internal -m ping -u devops --private-key=~/.ssh/id_rsa
ansible all -m ping -u devops --private-key=~/.ssh/id_rsa
ansible localhost -m command -a 'id'
id
ansible frontend1.${GUID}.internal -m ping  --private-key=~/.ssh/id_rsa
ansible app1.${GUID}.internal -m command -a 'cat /ect/motd' -u devops --private-key=~/.ssh/id_rsa
ansible app1.${GUID}.internal -m command -a 'cat /etc/motd' -u devops --private-key=~/.ssh/id_rsa
ansible all -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops --private-key=~/.ssh/id_rsa
ansible all -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops --private-key=~/.ssh/id_rsa --become
ansible app1.${GUID}.internal -m command -a 'cat /etc/motd' -u devops --private-key=~/.ssh/id_rsa
cd
git clone https://github.com/prakhar1985/ansible_implementation_grading.git
cd ansible_implementation_grading/
ansible-playbook lab-2-grade.yml -e GUID=${GUID}
ansible all --list-hosts
exit
passwd --help
passwd --usage
exit
cd ansible_implementation
cat hosts
exit
echo $GUID
echo $MYUSER
echo ${MYUSER}
cd ansible_implementation
cat << EOF >> /home/devops/ansible_implementation/hosts
[lb]
frontend1.${GUID}.internal

[webservers]
app1.${GUID}.internal
app2.${GUID}.internal

[db]
appdb1.${GUID}.internal

EOF

ll
cat hosts 
vi check_webservers.yml
ansible-playbook --syntax-check check_webservers.yml 
ansible-playbook - check_webservers.yml 
ansible-playbook -c check_webservers.yml 
ansible-playbook --syntax-check check_webservers.yml -u devops --private-key=~/.ssh/id_rsa
ansible-playbook --check c
ansible-playbook check_webservers.yml 
cat hosts
cat << EOF >> /home/devops/ansible_implementation/hosts 
[webservers:vars]
ansible_user = devops
ansible_ssh_private_key_file = /home/devops/.ssh/id_rsa
EOF

cat hosts
vi deploy_apache.yml
ansible-playbook --syntax-check deploy_apache.yml 
ansible-playbook deploy_apache.yml 
curl http://app1.${GUID}.internal
cd ..
cd ansible_implementation_grading/
ansible-playbook lab-3.1-grade.yml -e GUID=${GUID}
cd ..
cd ansible_implementation
vi deploy_apache.yml 
ansible-playbook deploy_apache.yml 
cd ..
cd ansible_implementation_grading/
ansible-playbook lab-3.1-grade.yml -e GUID=${GUID}
vi ../ansible_implementation/deploy_apache.yml 
ansible-playbook  ../ansible_implementation/deploy_apache.yml 
cd ..
cd ansible_implementation
ansible-playbook deploy_apache.yml 
cd ..
cd ansible_implementation_grading/
ansible-playbook lab-3.1-grade.yml -e GUID=${GUID}
cat lab-3.1-grade.yml 
ansible db -m setup 
cd .
cd ..
cd ansible_implementation
ansible db -m setup 
ansible db -m setup -a 'filter=ansible_user*'
cat << EOF >> custom.fact
package = httpd
service = httpd
state   = started
EOF

vi custom.fact 
exit
echo $GUID
cd ansible_implementation
ll
git status
cd ..
ll
cd devops/
ll
git init
git add .
git commit -m "ansible implementation"
git config user.email "smartiano24@yahoo.com"
git config user.name "kaycee"
git commit -m "ansible implementation"
git status
git rm .
git rm . -r
git rm -r . 
git rm -rf . 
git rm -rf 
ll
ll -a
vi gitignore
ll
git add .
git status
git reset HEAD 
git status
git add .
git status
git commit -m "first commit"
git push --help
git push https://github.com/smarty24/Red-Hat-Ansible-Automation-for-SAP-Solutions
git fetch 
git fetch https://github.com/smarty24/Red-Hat-Ansible-Automation-for-SAP-Solutions
ll
git push https://github.com/smarty24/Red-Hat-Ansible-Automation-for-SAP-Solutions
git pull
git pull https://github.com/smarty24/Red-Hat-Ansible-Automation-for-SAP-Solutions
ll
git status
git push https://github.com/smarty24/Red-Hat-Ansible-Automation-for-SAP-Solutions
git rm -rf .
git status
exit
