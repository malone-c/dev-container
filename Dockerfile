FROM fedora:latest

RUN sudo dnf copr enable dejan/lazygit -y

RUN tee /etc/yum.repos.d/google-cloud-sdk.repo <<EOF
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el9-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=0
gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

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
    curl \
    google-cloud-cli \
    && dnf clean all

RUN curl -fsSL https://github.com/zellij-org/zellij/releases/download/v0.43.1/zellij-x86_64-unknown-linux-musl.tar.gz \
    | tar -xz -C /usr/local/bin

RUN uv python install 3.10 3.11 3.12 3.13
