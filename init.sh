#!/bin/bash
set -e

_PODMAN_RUN="sudo podman run --security-opt label=disable --rm -v $PWD:/code -w /code"

echo ">> Working directory: ${PWD}"
