### How to deploy Flask App to Linux Server using Gunicorn and Supervisor:

* install virtualenv && virtualenvwrapper
* go to project folder
* mkvirtualenv your_env_name
	* mkvirtualenv --python=/usr/bin/python3.4 your_env_name (for python 3.4)

* workon your_env_name
* get your libraries via pip
	* get your libraries via pip3 for python 3.4

* get gunicorn lib using pip or pip3
* verify that your app works with gunicorn
	* gunicorn your_runnable_file_name:app -b 0.0.0.0:YOUR_PORT --access-logfile /var/log/gunicorn.log (add --pythonpath /usr/bin/python3.4 for python 3.4)

* install supervisor:
	apt-get install supervisor
	service supervisor restart

* create your_app_name.conf in /etc/supervisor/conf.d
* fill with sample configuration:
	
    ```bash
    [program:your_app_name]
	
    command = /root/python_workspace/python_envs/mp-admin-indicator/bin/gunicorn your_runnable_file_name:app -b 0.0.0.0:YOUR_PORT
	directory = /your/project/working/dir
	
    user = root
    autostart = true
    ```

* reread conf:
	* service supervisor stop
	* supervisorctl reread
	* service supervisor start

* supervisorctl start your_app_name

  Enjoy :+1: :+1: :+1:
