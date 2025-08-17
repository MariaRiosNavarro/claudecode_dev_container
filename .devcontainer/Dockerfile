FROM --platform=linux/arm64 node:20-slim

RUN apt-get update && apt-get install -y \
    curl \
    git \
    sudo \
    bash \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash vscode && \
    echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Install pnpm and Claude Code globally
RUN npm install -g pnpm @anthropic-ai/claude-code

USER vscode
WORKDIR /workspace

# Ensure PATH includes npm global
ENV PATH="/usr/local/bin:$PATH"