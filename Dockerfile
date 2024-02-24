FROM codercom/code-server:debian AS codeserver

# RUN apt-get update; \
#     apt-get install -y git build-essential; \
#     rm -rf /var/lib/apt/lists/*;

WORKDIR /code

# RUN code-server --install-extension stateful.runme
# RUN git clone --depth=1 https://github.com/stateful/vscode-runme.git
# RUN rm -rf vscode-runme/.git
# ADD .vscode vscode-runme/examples/.vscode
# RUN cat /home/coder/.config/code-server/config.yaml
CMD ["code-server", "--auth", "none", "--app-name", "Playground"]
