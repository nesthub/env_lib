# SHELL
reload () { source ~/.zshrc }
dstore () { sh $WORKSPACE_PATH/sh/sys/dstore.sh }

# APP
atom () { open -a atom $@ }

# NAVIGATION
workspace () { cd $WORKSPACE_PATH/$@ }
backend_start () { cd ~/dev/presto/backend_presto && npm run start:dev }
ios () { cd ~/dev/presto/app_presto && npm run ios }
ios6 () { cd ~/dev/presto/app_presto && npm run ios6 }
presto_backend () { cd ~/dev/presto/backend_presto/$@ }
presto_app () { cd ~/dev/presto/app_presto/$@ }
prestoyou_backend () { cd ~/dev/prestoyou/backend_prestoyou/$@ }
prestoyou_app () { cd ~/dev/prestoyou/app_prestoyou/$@ }
sold_backend () { cd ~/dev/sold/backend_sold/$@ }
sold_app () { cd ~/dev/sold/app_sold/$@ }
dev () { cd ~/dev/$@ }

# CONFIG
vimrc () { vim $VIM_CONF/vimrc }
vimrc_remap () { vim $VIM_CONF/vimrc_remap }
vimrc_plugvim () { vim $VIM_CONF/vimrc_plugvim }
zshrc () { vim $ZSH_CONF/zshrc && source ~/.zshrc }

# VSCODE
alias vscode="open -a Visual\ Studio\ Code $@"
alias vsc="open -a Visual\ Studio\ Code $@"

# GIT
alias gad="git add $@"
alias gst="sh $WORKSPACE_PATH/sh/git/gstatus.sh"
alias gco="sh $WORKSPACE_PATH/sh/git/gcommit.sh"
alias gpu="sh $WORKSPACE_PATH/sh/git/gpush.sh"
alias gacp="sh $WORKSPACE_PATH/sh/git/gaddcompush.sh"

alias gdelete="sh $WORKSPACE_PATH/sh/git/gdelete.sh"
alias gcreate="sh $WORKSPACE_PATH/sh/git/gcreate.sh"
alias gbranch="git remote prune origin && git branch -a"
alias grebase="git fetch && git rebase && git pull"
alias gsub="git submodule update --init"

# INSTALL WORKSPACE
alias install-brew="sh $BREW_CONF/brew_install.sh"
alias install-npm="sh $NPM_CONF/npm_install.sh"
alias install-all="sh $BREW_CONF/brew_install.sh && sh $NPM_CONF/npm_install.sh"

# CTAGS
alias tags="ctags -R -f ./.git/tags ."

# SPECIAL
alias gogo="cd ~/dev ; mv ~/dev/microservice/.git ~/dev ; mv ~/dev/microservice/README.md ~/dev ; rm -rf ~/dev/microservice ; mkdir -f ~/dev/microservice ; rsync -av --progress ~/dev/soldvn/backend/* ~/dev/microservice --exclude node_modules --exclude README.md ; rsync -av --progress ~/dev/soldvn/backend/.* ~/dev/microservice --exclude .git ; mv ~/dev/.git ~/dev/microservice ; mv ~/dev/README.md ~/dev/microservice ; cd ~/dev/microservice ; gst"

# PRESTO NGROK
# prestongrok () { sh $WORKSPACE_PATH/sh/ngrok/presto.sh }
# prestolocal () { sh $WORKSPACE_PATH/sh/ngrok/prestoLocalhost.sh }
