# Dev container with updated software for development

The image built here solves OS/software versioning issues (e.g. Debian 11 is based on an outdated version of glibc).

## Features (see Dockerfile)

* OS: Fedora 43
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

