cd /home/devops-case-study
sudo pkill gunicorn
sudo nohup /home/venv/bin/gunicorn \
 -b 0.0.0.0:5000 -w 3 wsgi --error-logfile app.log > /dev/null 2>&1 &
 