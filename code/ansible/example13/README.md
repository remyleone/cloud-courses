---
layout: default
permalink: /code/ansible/example13
---

Example using a dynamic inventory.

Create an `scaleway_inventory.yml` file with the following content:

```yaml
plugin: scaleway
```

Use the following command:

    $ ansible-inventory -i scaleway_inventory.yml --list
