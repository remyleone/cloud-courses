# Demo Scaleway + Nodejs

## Getting started with Vagrant and Virtual box

https://www.vagrantup.com/
https://www.virtualbox.org/

- `vagrant up`
- `vagrant ssh`

## Setup credentials

- Create an SSH key and add it to your account: https://www.scaleway.com/docs/configure-new-ssh-key/
- Create a new token https://www.scaleway.com/docs/generate-an-api-token/
- Add it to your environment:

    ```
    export SCW_ACCESS_KEY="SCWXXX"
    export SCW_TOKEN="bc88fc55-XXX"
    export SCALEWAY_TOKEN=$SCW_TOKEN

    export SCW_ORGANIZATION="951df375-XXXX"
    export SCW_ORG=$SCW_ORGANIZATION
    ```

# Create the infrastructure

- `terraform init`
- `terraform plan`
- `terraform apply`

# Provision them

- `ansible-inventory -i inventory.yml --list`
- `ansible-playbook -i inventory.yml main.yml`

