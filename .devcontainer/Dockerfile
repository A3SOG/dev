# Use the official Ubuntu image
FROM ubuntu:latest

# Install required dependencies
RUN apt-get update && \
    apt-get install -y ca-certificates curl git gnupg libssl-dev nodejs pkg-config python3 python3-pip unzip && \
    curl -fsSL https://bun.sh/install | bash && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg && \
    NODE_MAJOR=20 && \
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /projects

# Start the development environment
CMD ["/bin/bash"]
