#!/usr/bin/env bash

# example of how to use terraform (aliased) in an SSH command 

 ssh ubuntu@$(tf output bastion_public_ip) -i secrets/benedetto_terraform.pem
