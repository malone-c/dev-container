FROM fedora:latest

RUN sudo dnf copr enable dejan/lazygit -y

RUN dnf install -y \
    git \
    gh \
    chezmoi \
    neovim \
    lazygit \
    uv \
    ripgrep \
    fzf \
    lua \
    bat \
    gcc \
    make \
    && dnf clean all

RUN uv python install 3.10 3.11 3.12 3.13


