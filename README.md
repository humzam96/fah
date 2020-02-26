# Folding @ Home
This repo contains a dockerfile, config file, and playbook to deploy containers running folding@home. 
The team specified in the config is for Red Hat NAPS.

## fah.yml playbook
Running ansible-playbook fah.yml -i inventory -t docker will install docker images on the machines listed in your inventory file.

Please add ansibe_sudo_pass and ansible_user to each line with your hostnames. 

If you want it to run directly on your machine replace '-t docker' with '--skip-tags=docker' to your playbook command.

## Why the docker container
Mostly because I am installing my own at home kubernetes cluster which has power to spare. I also ran into a lot of dependency issues on a few of my older machines, oddly enough all had the latest version of docker. It was quicker to build the docker image and use the playbook for me.  
