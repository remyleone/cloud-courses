---
layout: default
---

This example requires having a consul running locally

	$ consul agent -dev -ui

First go to `user_a`

	terraform init
	terraform plan
	terraform apply

Then go to `user_b`

	terraform init
	terraform plan
	terraform apply
