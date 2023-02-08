# Devcontainer

My portable and ephemeral unix IDE. 

## Build

```bash
podman build . -t dev
```

## Run

```bash
podman run --rm -ti dev

podman run --rm -ti -v ~/project:/root/project dev

podman run --rm -ti -v ~/project:/root/project -p 3000:3000 dev
```
