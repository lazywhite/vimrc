# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


export PATH=/usr/local/kubebuilder/bin:$PATH
export PATH=/root/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=/root/go/bin:$PATH
export PATH=/share/bin:$PATH
export PATH=/usr/local/jdk-16.0.1/bin:$PATH
export PATH=/usr/local/apache-maven-3.8.1/bin:$PATH
export PATH=/usr/local/gradle-7.0/bin:$PATH
#export PATH=/$PATH:usr/local/python3.9.5/bin



export GIT_TERMINAL_PROMPT=1


alias kc="kubectl"
alias kcg="kubectl get"
alias kcd="kubectl describe"
alias kcga="kubectl get -A"
alias vim="nvim"
alias vimdiff="nvim -d"
alias rehash="hash -r"

#kubectl completion bash >/etc/bash_completion.d/kubectl
#svcat completion bash >/etc/bash_completion.d/svcat

#complete -C /root/bin/aliyun aliyun
#complete -C /root/go/bin/mc mc

export WORKON_HOME=~/envs
source /usr/local/bin/virtualenvwrapper.sh


parse_git_branch() {
         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
         
}
export PS1="\u@\h \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] # "

# Ctrl + s
stty -ixon


# terminal历史记录同步
export PROMPT_COMMAND="history -a; history -n"
export KUBECONFIG=/root/.kube/config


# 激活k8s环境
function useenv() {
    #sgvpn.sh $1
    source /share/k8s-envs/$1/profile
}
# 离开k8s环境
function leaveenv(){
    export PS1="\u@\h \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] # "
    export KUBECONFIG=/root/.kube/config
}
