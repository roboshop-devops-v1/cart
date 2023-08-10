FROM            node
RUN             mkdir /app
WORKDIR         /app
COPY            node_modules/ node_modules/
COPY            server.js .
COPY            docker/run.sh .
ENTRYPOINT      [ "bash", "run.sh" ]