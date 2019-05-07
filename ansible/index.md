---
layout: default
---

# Ansible tutorial

This tutorial presents Ansible step-by-step.
You'll need to have a (virtual or physical) machine to act as an Ansible node.

Ansible is a configuration management software that lets you control and configure nodes from  another machine.
What makes it different from other management software is that Ansible  uses (potentially existing) SSH infrastructure, while others (Chef, Puppet, ...) need a specific PKI infrastructure to be set up.

Ansible also emphasises push mode, where configuration is pushed from a master machine (a master machine is only a machine where you can SSH to nodes from) to nodes, while most other CM typically do it the other way around (nodes pull their config at times from a master machine).

This mode is really interesting since you do not need to have a 'publicly' accessible 'master' to be able to configure remote nodes: it's the nodes that need to be accessible (we'll see later that 'hidden' nodes can pull their configuration too!), and most of the time they are.

# Prerequisites for Ansible

You need the following python modules on your machine (the machine you run ansible
on)
- python-yaml
- python-jinja2

On Debian/Ubuntu run:
``sudo apt-get install python-yaml python-jinja2 python-paramiko python-crypto``

We're also assuming you have a keypair in your ~/.ssh directory.

# Installing Ansible

## From source

Ansible devel branch is always usable, so we'll run straight from a git checkout.
You might need to install git for this (`sudo apt-get install git` on Debian/Ubuntu).

```bash
git clone git://github.com/ansible/ansible.git
cd ./ansible
```

At this point, we can load the Ansible environment:

```bash
source ./hacking/env-setup
```

# Cloning the tutorial

```bash
git clone https://github.com/remyleone/cloud-courses
cd ansible
```

## Contents

[Terminology](https://docs.ansible.com/ansible/glossary.html):
 - [command or
   action](https://docs.ansible.com/ansible/intro_adhoc.html): [ansible module](https://docs.ansible.com/ansible/modules.html) executed in
   stand-alone mode. Intro in [example02](example02).
 - task: combines an action (a module and its arguments) with a name
   and optionally some other keywords (like looping directives).
 - play: a yaml structure executing a list of roles or tasks over a list
   of hosts
 - [playbook](https://docs.ansible.com/ansible/playbooks_intro.html):
   yaml file containing multiple plays. Intro in
   [example04](example04).
 - [role](https://docs.ansible.com/ansible/playbooks_roles.html): an
   organisational unit grouping tasks together in order to achieve
   something (install a piece of software for instance). Intro in
   [example12](example12).

Just in case you want to skip to a specific step, here is a topic table of contents.

- [00. Setup](example00)
- [01. Basic inventory](example01)
- [02. First modules and facts](example02)
- [03. Groups and variables](example03)
- [04. Playbooks](example04)
- [05. Playbooks, pushing files on nodes](example05)
- [06. Playbooks and failures](example06)
- [07. Playbook conditionals](example07)
- [08. Git module](example08)
- [09. Extending to several hosts](example09)
- [10. Templates](example10)
- [11. Variables again](example11)
- [12. Migrating to roles](example12)

## Check to see if Ansible is installed?

```
$ ansible --version
ansible 2.7.0.dev0 (devel 6b6c017dd1) last updated 2018/07/04 15:57:15 (GMT +200)
  config file = None
  configured module search path = [u'/Users/sieben/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /Users/sieben/workspace/ansible/lib/ansible
  executable location = /Users/sieben/workspace/ansible/bin/ansible
  python version = 2.7.15 (default, Jun 17 2018, 12:46:58) [GCC 4.2.1 Compatible Apple LLVM 9.1.0 (clang-902.0.39.2)]
```
