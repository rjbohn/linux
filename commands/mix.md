WGET
===========
wget --limit-rate=200k --no-clobber --convert-links --random-wait -r -p -E -e robots=off -U mozilla http://0.0.0.0:5000
wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains thewebsite.com --no-parent http://0.0.0.0:5000
wget --random-wait -r -p -e robots=off -U mozilla http://url
wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains domain.org --no-parent http://url
wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains domain.fr --no-parent http://url --user <user> --password <pass>

SUPERVISOR
==========
sudo supervisorctl stop YOURAPP:*


TOR
===
sudo nano /etc/tor/torrc
uncomment hashPassword
uncomment ControlPort
sudo /etc/init.d/tor restart

tor --hash-password PASS


SEARCH INSIDE FILE
===================
- grep -rnw '/path/to/somewhere/' -e "pattern"
- libreoffice --headless -convert-to pdf <file_name>.docx -outdir output/path/for/pdf
- echo -n Welcome | md5sum
- grep -r "word" .
- gpasswd -a robert sudo
- $0 sublime text search and replace handy regex macro
- pexpect, upstart, fabric, or logstash Jenkins

- pkg-config --cflags --libs glib-2.0 -> which automatically finds metadata about installed libraries.

- python setup.py install --record files.txt
- cat files.txt | xargs rm -rf
- find . -name "*.pyc" -exec rm -rf {} \;

### Show debian package dependencies
* dpkg -I deb-package

### turn off second monitor in i3
* xrandr --output VGA-0 --auto
* xrandr --output eDP-1-1 --off 

### list view and close button on right
* sudo apt-get install gnome-session-fallback
* gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
* gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'

### add user to the sudoers
* gpasswd -a username sudo

### default file/folder permission
* find . -type d -exec chmod 0755 {} \;
* find . -type f -exec chmod 0644 {} \;
* sudo chmod -R a+rwX,o-w myfolder 

### rename partition
* sudo e2label /dev/sdxN my_label

### misc
* usermod -aG sudo username // add user to sudoers
* export LC_ALL="en_US.UTF-8"
* find /path/to/files* -mtime +5 -exec rm {} \;
