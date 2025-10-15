FROM ghcr.io/xe/devcontainer-base/pre/go

WORKDIR /app

COPY go.mod go.sum package.json package-lock.json ./
RUN apt-get update \
  && apt-get -y install zstd brotli redis \
  && mkdir -p /home/vscode/.local/share/fish \
  && mkdir -p /home/vscode/.local/share/atuin \
  && chown -R vscode:vscode /home/vscode/.local \
  && chown -R vscode:vscode /go \
  && chmod -R u+w /home/vscode/.local

RUN mkdir -p /workspace/anubis && chown -R vscode:vscode /workspace

CMD ["/usr/bin/sleep", "infinity"]