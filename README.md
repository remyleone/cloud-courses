# Cloud courses

## Pre-requisites

- [Ansible]()
- [Packer]()
- [Terraform]()

All content of the course will be put online.

You can go straight to the practical exercices if you want.
As a teacher I can help avoid loosing time searching on faulty knowledge path.

## Overview of the courses

- What is the cloud?
- What is the game changer?
- When to use it? Not use it?

- Understanding what is a IaaS compute service.

Notions to understand:
- Undestanding the need for capacity planning

## Infrastructures as code

- Problem: Slow console, Reproductibility, ...
- Solution: Deploy infrastructure as code.
  - Use the same tools: git, editor, ...

Practical exams:

- Ansible
- Packer
- Terraform

## IaaS, PaaS, SaaS, FaaS, Baremetal

- What does it mean?
- What are you paying for?

Notions to understand:
- Understanding migration cost.
- Understanding lock-in
- Understanding the trade-off between velocity/flexibility

Practical exams:

- You got an app: Wordpress
- Comparison between make it work on PaaS platform/IaaS platform

## Network and Security

- How to secure a IaaS installation?

Notions to explore:
  - Security groups
  - VLAN, ...

Notions to understand:
  - Physical security guaranteed
  - Software-based security to perform (shared responsability model)

Practical exams:

- We got an application that need particular open port to be able to work.

## Deployment patterns

- How to scale an application?
  - What are the typical patterns?
  - How to apply them?

Practical exams:

- You got a deployment. Scale it.
- Understanding 12 factors application

## Evaluation

- Deploy a simple application (Rails, Django, ...) using Ansible, terraform .
  I should be able to see your inventory.
  You should know how to change a configuration quickly using Ansible.
  You should know how to execute a command on only a subset of machines.

- Create a Image for a particular application
  - Using Packer, create an instant application for a specific application.
  - Your build should be:
      - documented (I understand what this image is for and how it is build),
      - reproductible (I can rebuild the image starting from the same image and get the same results)
      - testable (the image works and I can prove it by passing some tests)

- Deploy an application in Kubernetes (If available on Scaleway)
  Package your application to use it on a managed container service.
