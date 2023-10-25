## A Case Study for the New Grad DevOps Engineer Role

###Save the file, save the time!
When working with Vagrant, the virtual machine is automatically updates whenever  changes the source code of Flask application.

###Exception: requirements' changes
When changed requirements, run the code below and continue where you left off.
```bash
vagrant reload --provision
```
### Setup
#### Local environment with Vagrant

I saw it working with Python 3.9.12 on MacOS.

**Prerequisites**
- git
- python3
- vagrant
- ansible

```bash
git clone https://github.com/PokerCoder/devops-case-study.git
cd devops-case-study
echo 'export DEPLOY_MODE=LOCAL' >> '~/.zshrc' # ~/.bashrc if you are using bash
vagrant up
```
The application will be available at [http://192.168.33.10:5000](http://192.168.33.10:5000). If it doesn't work, you better call Saul.

#### Local environment without Vagrant 

I saw it working with Python 3.9.12 on MacOS.

**Prerequisites**
- git
- python3

```bash
git clone https://github.com/PokerCoder/devops-case-study.git
cd devops-case-study
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
gunicorn -b 0.0.0.0:5000 -w 3 --reload wsgi
```

#### Development environment with any Linux Ubuntu host provider (e.g. AWS EC2)

I saw it working on Ubuntu 22.04 server.

**Prerequisites**
- git
- python3
- AWS EC2 instance
  - private key in pem format
  - security group settings to allow http traffic from port 5000
- ansible
  - change the host name specified in the dev/inventory

```bash
ansible-playbook --private-key <path/key.pem> -i ansible/environments/dev/inventory ansible/playbook.yml
```