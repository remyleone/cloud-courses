---
layout: default
permalink: /code/terraform/example00
---

# Creation using terraform

    terraform init
    terraform plan
    terraform apply

## Ansible version check

To check your ansible version use the command `ansible --version`.
The output should be similar to the above:

```
$ ansible --version
ansible 2.7.0.dev0 (devel 12e7e9650e) last updated 2018/07/30 11:05:11 (GMT +200)
  config file = None
  configured module search path = [u'/Users/sieben/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /Users/sieben/workspace/ansible/lib/ansible
  executable location = /Users/sieben/workspace/ansible/bin/ansible
  python version = 2.7.15 (default, Jun 17 2018, 12:46:58) [GCC 4.2.1 Compatible Apple LLVM 9.1.0 (clang-902.0.39.2)]
```

Now head to the first step in [step-01](../example01).
