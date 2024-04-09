FROM codercom/code-server:debian AS codeserver

RUN sudo apt update && \
    sudo apt install -y --no-install-recommends git build-essential;

WORKDIR /home/coder
RUN code-server --install-extension stateful.runme
RUN git clone --depth=1 https://github.com/stateful/vscode-runme.git
RUN rm -rf vscode-runme/.git
ADD .vscode vscode-runme/examples/.vscode

#
# Kraftcloud image
FROM scratch

COPY --from=codeserver /usr/bin/code-server /usr/bin/code-server
# TODO: Copy dependencies of code-server
COPY --from=codeserver /home/coder /home/coder
