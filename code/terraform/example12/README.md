---
layout: default
permalink: /code/terraform/example12
---

Example using [remote state](https://www.terraform.io/docs/state/remote.html).

This example requires having a consul running locally

## Code

{% highlight terraform %}
{% include_relative user_a/main.tf %}
{% endhighlight %}

## How to use?

	$ consul agent -dev -ui

First go to `user_a`

	terraform init
	terraform plan
	terraform apply

Then go to `user_b`

	terraform init
	terraform plan
	terraform apply
