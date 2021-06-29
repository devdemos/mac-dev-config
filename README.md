
# Mac Dev Config 

This repository has been setup to assist in the set up consistancy between workstations in regards
to tools and profiles. 


## About
Checks for the installation of Homebrew and XCode, and if they are not installed will install them

The following tools will be installed 

| Catergory 	| Tools |
|:-:	|:-	|
| General	|   bat <br> fish <br> git <br> htop <br> nmap <br> python@3 <br> terminal-notifier <br> tree <br> wget	|
| Cloud Based Tools 	|  aws cli <br> google-cloud-sdk	|
| Kubernetes 	|  Helm <br> eksctl	<br> kubectl <br> kubectx <br> kustomize <br> stern | 
| Open Policy Agent 	| opa cli 	|
|  Terraform	| terraform cli 	|



## Install 

This repository uses Task of which is a task runner / build tool that aims to be simpler and easier to use than a makefile

To install Task if you’re on macOS or Linux and have Homebrew installed, getting Task is as simple as running:

`brew install go-task/tap/go-task`

Else you can utilse the `pre-req.sh` bash file which will install Homebrew, XCode and Task for you.

Once installed, you just need to describe your build tasks using a simple YAML schema in a file called Taskfile.yml

Running `task --list` (or `task -l`) lists all tasks with a description. 
```yaml
* check-zsh: 		Checks for zsh, Installs if missing
* config-zsh: 		Sets up zsh config
* install-all: 		Sets Up Workstation Shell, Apps & Tools
* install-apps: 	Sets up zsh config
* install-iTerm2: 	Installs iTerm2
* install-vim-profile: 	Installs Custom Vim Profile
* zsh-plugins: 		Installs zsh plugins
```

Choose to install individual components on their own, or the `install-all` task
to run all tasks and setup your workstation. 