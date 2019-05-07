---
layout: default
---

# Full app deployment lifecycle

The goal of this project is to have a complete lifecycle of an application set up with Infrastructure as Code tools.

It should be:

- Documented: What is this application, how it is build, ...
- Reproducible: I can rebuild the image starting from the same source and get the same results
- Testable: The application works and I can prove it by passing some tests (Manual is ok, Automated is preferred)

## Provisioning (Ansible)

You should know how to:

- Provision your application using Ansible
- Execute a command on only a subset of machines.
- Change a configuration quickly using Ansible.
- Check if your machines are up and accepting Ansible commands.

*Bonus points*:

- If you have an Ansible dynamic inventory

## Image creation (Packer)

- Create a Image for your application.

*Bonus points*:

- If you have a packer life-cycle that only uses environment variables

## Infrastructure provisioning (Terraform)

- Provision your required infrastructure using Terraform

## Bonus point

- If you have a terraform lifecycle that only uses environment variables

## Suggestions of application

- [Wordpress](https://codex.wordpress.org/Installing_WordPress)
- [Magento](https://devdocs.magento.com/guides/v2.3/install-gde/system-requirements-tech.html)
