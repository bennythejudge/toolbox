#!/usr/bin/env bash

set -euo pipefail

# set the registry either from environment or default
readonly REGISTRY_ADDRESS="${REGISTRY_ADDRESS:-localhost:5000}"

main() {
    check_args "$@"

    local image=$1
    local tag=$2
    local digest=$(get_digest $image $tag)


    get_image_configuration $image $digest
}

check_args() {
    if (($# != 2)); then
        echo "Usage:

        $(basename $0)


}
