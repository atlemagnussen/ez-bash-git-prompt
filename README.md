# easy bash git + python env prompt

Tested on linux and freebsd  
This is a personal setup of colors and information, I tried to make it simple to change colors and information in the prompt.sh file  

Big thanks to [jzp74/simple-git-prompt](https://github.com/jzp74/simple-git-prompt) from where I basically got the whole idea and copied a lot.

Source it from .bashrc or bash_profile depending on os/distro to make it work:
```sh
source $HOME/.bashprompt/prompt.sh
```

Remember to give execute permission:
```sh
chmod +x prompt.sh
chmod +x gitstatus.sh
```

[Color codes source](https://misc.flogisoft.com/bash/tip_colors_and_formatting)

- home folder no git  
![home no git](https://storage.googleapis.com/atle-static/bash-prompt/ez-bash-prompt-home-folder-no-git.jpg)
- git clean  
![git clean example](https://storage.googleapis.com/atle-static/bash-prompt/ez-bash-prompt-git-clean.jpg)
- git new file  
![git new file](https://storage.googleapis.com/atle-static/bash-prompt/ez-bash-prompt-git-new-file.jpg)
- git files changed  
![git files changed](https://storage.googleapis.com/atle-static/bash-prompt/ez-bash-prompt-git-files-changed.jpg)
- git files staged  
![git files staged](https://storage.googleapis.com/atle-static/bash-prompt/ez-bash-prompt-git-files-staged.jpg)
- git commit to be pushed  
![git commit to be pushed](https://storage.googleapis.com/atle-static/bash-prompt/ez-bash-prompt-git-commit-to-be-pushed.jpg)
- git commits to be pulled  
![git commits to be pulled](https://storage.googleapis.com/atle-static/bash-prompt/ez-bash-prompt-git-commits-to-be-pulled.jpg)
- git commits to pull and push  
![git commits to pull and push](https://storage.googleapis.com/atle-static/bash-prompt/ez-bash-prompt-git-commits-to-pull-and-push.jpg)
- git conflict  
![git conflict](https://storage.googleapis.com/atle-static/bash-prompt/ez-bash-prompt-git-conflict.jpg)
- git and python virtual environment
![git and python env](https://storage.googleapis.com/atle-static/bash-prompt/ez-bash-prompt-git-plus-python-env.jpg)
