## A Case Study for the DevOps

### Save the file, save the time!
When working with Vagrant, the virtual machine is automatically updates whenever  changes the source code of Flask application.

### Setup

I saw it working with Python 3.9.12 on MacOS.

**Prerequisites**
- git
- python3
- vagrant
- ansible

```bash
git clone https://github.com/PokerCoder/devops-case-study.git
cd devops-case-study
vagrant up
```

The application will be available at [http://192.168.33.10:5000](http://192.168.33.10:5000). If it doesn't work, you better call Saul.