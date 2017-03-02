# Docker System Prune

Executes the `docker system prune` command to allow automatize its execution.

# Usage

This image allows you to program automatically when a prune will be done in your hosts.

The main advantage over external solutions like a cron job is that you can launch it in a cluster easily: "fire & forget"

For example in a Swarm mode cluster:

```bash
docker \
  service create --name docker-system-prune \
    --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
    --mode global \
    --restart-delay 86400s \
    --restart-max-attempts 3650 \
    softonic/docker-system-prune 
```

This would launch the "prune" command in all the nodes in the cluster once a day, more or less, during 10 years.

!!! info
         You need to mount the docker socket to allow the command to be executed in the host.

# Requirements

As it executes the `docker system prune` command this can work only in nodes with Docker versions `>=1.13`
