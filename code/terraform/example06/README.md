---
layout: default
permalink: /code/terraform/example06
---

Example using file inclusion and templating

## Code

{% highlight terraform %}
{% include_relative main.tf %}
{% endhighlight %}

## How to use?

    terraform init
    terraform plan
    terraform apply
    terraform destroy

This example use cloud-init.
cloud-init run concurrently with other process when the instance boots.
