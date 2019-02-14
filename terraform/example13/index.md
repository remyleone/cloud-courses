---
layout: default
---

Example using [import](https://www.terraform.io/docs/import/index.html).

## Code

{% highlight terraform %}
{% include_relative main.tf %}
{% endhighlight %}

## How to use?

    terraform init
    terraform import scaleway_server.example13 381dddff-78c2-417e-8561-bed30ca2fd4b
    terraform plan
    terraform apply
