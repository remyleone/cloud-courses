---
layout: default
permalink: /code/ansible/example01
---

# Inventory

Before continuing, you need an inventory file.
The default place for such a file is  `/etc/ansible/hosts`.
However, you can configure ansible to look somewhere else, use an environment variable (`ANSIBLE_HOSTS`), or use the `-i` flag in ansible commands an provide the inventory path.

We've created an inventory file (named `hosts`) for you in the directory that looks like this:

```bash
host0.example.org ansible_host=1.1.1.1 ansible_user=root
host1.example.org ansible_host=2.2.2.2 ansible_user=root
host2.example.org ansible_host=3.3.3.3 ansible_user=root
```

`ansible_host` is a special _variable_ that sets the IP ansible will use when trying to connect to this host.
Also, you'll have to change the IPs if you have set up your own Scaleway servers with different addresses.
In the case of Scaleway use the public IP of your server.

`ansible_user` is another special _variable_ that tells ansible to connect as this user when using ssh.
By default ansible would use your current username, or use another default provided in ~/.ansible.cfg (`remote_user`).

# Testing

Now that ansible is installed, let's check everything works properly.

```
ansible -m ping all -i hosts
```

What ansible will try to do here is just executing the `ping` module (more on modules later) on each host.

The output should look like this:

```
host0.example.org | success >> {
    "changed": false,
    "ping": "pong"
}

host1.example.org | success >> {
    "changed": false,
    "ping": "pong"
}

host2.example.org | success >> {
    "changed": false,
    "ping": "pong"
}
```

Good! All 3 hosts are alive and kicking, and ansible can talk to them.

Let's go now to [example02](../example02)
