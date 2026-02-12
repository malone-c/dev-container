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
    g++ \
    make \
    nodejs

# Zellij dependencies
RUN dnf install -y \
    cargo \
    openssl-devel \
    perl-FindBin \
    perl-IPC-Cmd 

RUN dnf clean all

RUN OPENSSL_NO_VENDOR=1 cargo install --locked zellij

RUN uv python install 3.10 3.11 3.12 3.13
