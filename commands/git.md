### config
* git config --global user.email "email"
* git config --global user.name "user"
* git config --global push.default simple

### gen ssh key pair
* ssh-keygen -t rsa -C "email"
* sudo apt-get install xclip
* xclip -sel clip < ~/.ssh/id_rsa.pub
* eval `ssh-agent -s`
* ssh-add

### fetch, rebase, and push
* git fetch --all
* git rebase origin/master
* git push --force origin fUser
* git push -u origin <branch-name>

* git branch
* git branch <new_branch>
* git checkout <existing-branch>

* git add .
* git pull --rebase origin master
* git commit -a -m "" 
* git push
* git stash save
* git stash pop

* git rm --cached -r mydirectory

* git stash
* git checkout other-branch
* git stash pop


### color git
```
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global color.ui auto
git config --global color.branch auto
git config --global color.status auto
```

### migrating a git repo
* git clone --mirror URL
* git remote add new-origin URL
* git push  new-origin --mirror 
* git remote rm origin
* git remote rename new-origin origin

### cancel las commit
* git reset HEAD~1

#### PR to a base from fork
* fork a repo and  clone it and cd to forked repo
* git remote add upstream <repo-location>
* git fetch upstream
* git rebase upstream/master
* git push origin master
