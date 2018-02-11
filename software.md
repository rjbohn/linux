### soft
- sudo apt install keychain feh pnmixer calibre clipit git mc p7zip-full p7zip-rar python-pip htop pidgin unrar-free keepassx i3 vlc filezilla curl gparted zsh vim

### sublime 3
- sudo add-apt-repository ppa:webupd8team/sublime-text-3
- sudo apt-get update
- sudo apt-get install sublime-text-installer

### java
- sudo add-apt-repository ppa:webupd8team/java
- sudo apt-get update
- sudo apt-get install oracle-java8-set-default

### golang
- sudo add-apt-repository ppa:gophers/archive
- sudo apt update
- sudo apt-get install golang-1.9-go
- go get github.com/derekparker/delve/cmd/dlv

### nemo
- sudo add-apt-repository ppa:webupd8team/nemo
- sudo apt-get update
- sudo apt-get install nemo nemo-fileroller
- gsettings set org.nemo.desktop show-desktop-icons false

### docker
- sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
- curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
- sudo apt-key fingerprint 0EBFCD88
- sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
- sudo apt-get update
- sudo apt-get install docker-ce

### To download
- xmind
- virtualbox
- i3lock-fancy
- https://gist.github.com/renshuki/3cf3de6e7f00fa7e744a
