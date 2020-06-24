if (( $+commands[kubectl] )); then
    __KUBECTL_COMPLETION_FILE="${ZSH_CACHE_DIR}/kubectl_completion"

    if [[ ! -f $__KUBECTL_COMPLETION_FILE ]]; then
        kubectl completion zsh >! $__KUBECTL_COMPLETION_FILE
    fi

    [[ -f $__KUBECTL_COMPLETION_FILE ]] && source $__KUBECTL_COMPLETION_FILE

    unset __KUBECTL_COMPLETION_FILE
fi

# Kubectl Aliases
alias kc=kubectl
alias kcg='kubectl get'
alias kcgall='kubectl get all'
alias kcd='kubectl describe'

# Get Kubernetes Status
alias kcabout='kubectl get componentstatus'

# Work with YML file
alias kcaf='kubectl apply -f'
alias kcdf='kubectl delete -f'

# Deletions
alias kcdel='kubectl delete'
alias kcdelf='kubectl delete po --grace-period=0 --force'

# Manage Context.
alias kcdc='kubectl config delete-context'
alias kccc='kubectl config current-context'
alias kcgc='kubectl config get-contexts'
alias kcuc='kubectl config use-context'
alias kcsc='kubectl config set-context'

# Pod Management
alias kcgp='kubectl get pods'
alias kcgpa='kubectl get pods --all-namespaces'
alias kcgpy='kubectl get pod -o yaml'
alias kcgpw='kubectl get pod -o wide'
alias kcdp='kubectl describe pod'
alias kcep='kubectl edit pod'
alias kcdelp='kubectl delete pods'

# Service management.
alias kcgs='kubectl get svc'
alias kcgsa='kubectl get svc --all-namespaces'
alias kcgsw='kgs --watch'
alias kcgsw='kgs -o wide'
alias kces='kubectl edit svc'
alias kcds='kubectl describe svc'
alias kcdels='kubectl delete svc'

# Drop into an interactive terminal on a container
alias kce='kubectl exec -ti'

# Deployments
alias kcgdep='kubectl get deployments'
alias kcddep='kubectl describe deployments'

# Namespaces
alias kcn='kubectl get namespaces'
alias kcn='kubectl create namespace'
alias kcdeln='kubectl delete namespace'

# Node Management
alias kcgno='kubectl get nodes'
alias kceno='kubectl edit node'
alias kcdno='kubectl describe node'

# Logs
alias kclogs='kubectl logs'
alias kclogs1h='kubectl logs --since 1h'
alias kclogsf='kubeclt logs -f'
alias kclogsf1h='kubeclt logs -f --since 1h'

# View all non-running pods
alias kcnorun='kubectl get po --all-namespaces --field-selector 'status.phase!=Running''

# View all pods based on
# --selector, --show-kind, --show-labels, --sort-by
alias kcgpl='kubectl get -l'
