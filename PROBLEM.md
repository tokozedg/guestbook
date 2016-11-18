# askCharlie DevOps Test

## Before starting

Here at askCharlie, we truly care about deploying our applications using the
best practices regarding software and infrastructure engineering and
architecture.

This concern has allowed us to sustain our growth so far with a small team of
high-skilled people, and as the company keeps growing this becomes an even more critical factor.

## The problem

askCharlie environment is composed of several application components (aka
microservices) using one central database. They're deployed in a hybrid
infrastructure, comprising both AWS and on-premises resources.

Your assignment is to propose a solution for this problem: We need to deploy
our Awesome Guestbook to production. The app uses our central database, which is
in a different network (you don't need to care about latency between those two
networks). It also uses redis. This solution must be able to scale to handle
growth without requiring much maintenance in the long run. To be able
to use all these components at scale, high availability is critical.

### Deliverables

1. A git repository containing:

- A configuration management (Chef, Puppet, Ansible, Salt, your choice ;))
  used to deploy a minimal version of the Guestbook
  - You don't need to provision the central database
  - You need to provision redis

- A Vagrantfile that spins up one Ubuntu box and provision it using the tool
  above (for reference: https://www.vagrantup.com/docs/provisioning/)

2. A PDF document containing:

- Any assumptions you have made (after all, we're not providing much information
about networking and placement);

- A diagram with your proposed architecture;
  - Think about high availability here

- Detailed explanation of your design choices (see the evaluation criteria for
guidance)

- Basic instructions on how to run the minimal version.

## Evaluation criteria

We'll evaluate your deliverables according to how well you cover the following
topics:

- Scalability

- Maintainability

- Reliability/Resilience

- Security

- Performance

- Cost effectiveness

## A few tips

- To draw the architecture diagrams: https://aws.amazon.com/architecture/icons

- If you find appropriate, feel free to leverage container technology (like
Docker) to get your stack up and running. We'd appreciate it a lot.

- Keep it as simple as possible! Use complexity wisely (like you would do in
your daily routine).

- Make sure to be thorough while explaining your design choices and trade-offs.
