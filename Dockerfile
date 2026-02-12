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
    nodejs \
    curl

RUN dnf clean all

RUN curl -fsSL https://github.com/zellij-org/zellij/releases/download/v0.43.1/zellij-x86_64-unknown-linux-musl.tar.gz \
    | tar -xz -C /usr/local/bin

RUN uv python install 3.10 3.11 3.12 3.13
