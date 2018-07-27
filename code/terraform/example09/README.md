---
layout: default
permalink: /code/terraform/example09
---

Example showing which files are ignored.

## Code

{% highlight hcl %}
{% include_relative server.tf %}
{% endhighlight %}

{% highlight hcl %}
{% include_relative scaleway.tf %}
{% endhighlight %}

## How to use?

    terraform init
    terraform plan
    terraform apply
    terraform destroy
