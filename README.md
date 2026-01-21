# Dev container with updated software for development

The image built here solves OS/software versioning issues (e.g. Debian 11 is based on an outdated version of glibc).

## Features (see Dockerfile)

* OS: `fedora:latest` (currently 43)
* Packages
    * `git`
    * `neovim`
    * `lazygit`
    * `tmux`
    * `nodejs`
    * `uv`
    * `python3` (3.10-3.13)
    * `fzf`


# Distrobox setup

Run these commands on the host machine.

```bash
# Install distrobox
/usr/bin/curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh

# Create the distrobox
distrobox create --image ghcr.io/malone-c/dev-container:latest --name dev

# Start the container
distrobox enter dev
```

# Autostart on login

To have the container start on login, add this to your .profile on the host machine

```bash
# Start distrobox if installed and not already inside a container
if command -v distrobox &> /dev/null && [ -z "$CONTAINER_ID" ]; then
    distrobox enter dev
fi
```

