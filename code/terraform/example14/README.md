---
layout: default
permalink: /code/terraform/example14
---

Example using workspace

## Code

{% highlight terraform %}
{% include_relative main.tf %}
{% endhighlight %}

## How to use?

    terraform init
    terraform plan
    terraform apply
    terraform workspace list
    terraform workspace new qa
    terraform plan
    terraform apply
    terraform select default
    terraform workspace delete qa
    terraform workspace select qa
    terraform destroy
    terraform workspace delete qa
    terraform workspace select default
    terraform workspace delete qa
