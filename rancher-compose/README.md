# Basic `rancher-compose` commands

## Create a stack and launch service

`rancher-compose -p <stack name> -f <.yml file> up`

## Scale service up

`rancher-compose -p <stack name> -f <.yml file> scale <service>=5`

## Upgrade stack even if rancher-compose.yml file has not changed (new images but rancher-compose.yml has not changed)
`rancher-compose -p <stack name> -f <.yml file> up --force-upgrade`

## Confirm the upgrade
`rancher-compose -p <stack name> -f <.yml file> up --upgrade --confirm-upgrade`

## Delete stack
`rancher-compose -p crap -f rancher.yml rm --force  # Note: This does not delete the stack in the UI, but does remove all containers and stops the service.` 
