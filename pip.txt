sudo pip install virtualenv
mkdir virt_env
cd virt_env/
virtualenv env
source env/bin/activate


pip freeze > requirements.txt
pip install -r requirements.txt

pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
pip freeze | xargs pip uninstall -y