# Substitute

Substitute is a Docker image that uses `envsubst` to recursively process all files in a source directory (by default `/usr/local/source`), replace the environment variables in each file, and store the processed files in the destination directory (by default `/usr/local/destination`).

The typical use would be as an init container for a pod where the source comes from a `configMap` and the environment variables come from a `secret`. See [Example.yaml](./Example.yaml) for an example.