FROM inputoutput/cardano-node:latest

WORKDIR /lovelace

COPY ./config ./config

# ENTRYPOINT ["/bin/sh"]
ENTRYPOINT ["/bin/sh", "-c"]

CMD [ "/nix/store/1v1hfp0jn4w9yvhl27m4ghdn6k9v4wxm-cardano-node-exe-cardano-node-1.25.1/bin/cardano-node run --topology /lovelace/config/testnet-topology.json --database-path /lovelace/data/db --config /lovelace/config/testnet-config.json --host-addr 0.0.0.0 --port 3001 --socket-path /lovelace/data/node.socket" ]
