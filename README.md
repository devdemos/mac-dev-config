
# Mac Dev Config 

This repository has been setup to assist in the set up and consistancy between workstations in regards
to tools and profiles. 


## About
Checks for the installation of Homebrew and XCode, and if they are not installed will install them

The following tools will be installed 

| Catergory 	| Tools |
|:-:	|:-	|
| General	|   bat <br> fish <br> git <br> htop <br> nmap <br> python@3 <br> terminal-notifier <br> tree <br> wget	|
| Cloud Based Tools 	|  aws cli <br> google-cloud-sdk	|
| Kubernetes 	|  Helm <br> eksctl	<br> kubectl <br> kubectx <br> kustomize <br>|
| Open Policy Agent 	| opa cli 	|
|  Terraform	| terraform cli 	|



## Install 

To install tools run : 
`.\setup-install.sh`

To install zsh run :
`.\setup-zsh.sh`