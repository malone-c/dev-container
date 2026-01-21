# TODO
- [x] Add dockerfile
- [x] Add CD pipeline
- [x] Add distrobox instructions to README.md

# Distrobox setup

```bash
# Install distrobox on debian 11
/usr/bin/curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh

# Create the distrobox
distrobox create --image ghcr.io/malone-c/dev-container:latest --name dev

# Start the container
distrobox enter dev
```

# Autostart on login

Add this to your .profile:
```bash
# Start distrobox on login
if command -v distrobox &> /dev/null && [ -n "$CONTAINER_ID" ]; then
    distrobox enter dev
fi
```

