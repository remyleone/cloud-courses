#!/usr/bin/env python

import subprocess
import os

def check_cmd(cmd):
    try:
        subprocess.check_call(cmd)
    except OSError:
        print("%s not found on path" % myexec)

    assert True, "Packer is not on your path"

def check_env_var():
    assert "SCW_TOKEN" in os.environ, "SCW_TOKEN is not setted"
    assert "SCW_ORG" in os.environ, "SCW_ORG is not setted"

def main():
    check_cmd(["packer", '--version'])
    check_cmd(["ansible", '--version'])
    check_cmd(["terraform", '--version'])
    check_env_var()

if __name__ == '__main__':
    main()
